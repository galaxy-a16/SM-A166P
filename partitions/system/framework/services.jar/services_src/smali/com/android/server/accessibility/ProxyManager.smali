.class public Lcom/android/server/accessibility/ProxyManager;
.super Ljava/lang/Object;
.source "ProxyManager.java"


# instance fields
.field public mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field public final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mContext:Landroid/content/Context;

.field public final mLastStates:Landroid/util/SparseIntArray;

.field public mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mProxyA11yServiceConnections:Landroid/util/SparseArray;

.field public final mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

.field public final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method public static synthetic $r8$lambda$-CZduH8HL_d6ZH0lujyBB0gUgeU(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateFocusAppearanceLocked$9(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3POlj0Aqklt60kzdcSDtjfwaYL8(Lcom/android/server/accessibility/ProxyManager;ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$6(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8P_Ezn9Tq1s2HUCVNI7-kE-iEmI(IILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleUpdateProxyClientsIfNeededLocked$4(IILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYxqE1z9piy-_LMemHygwDyxs-M(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ngf6It1EQbA7dT4nJuFFaKI-dBw(Lcom/android/server/accessibility/ProxyManager;ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateRelevantEventTypesLocked$2(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RxpqzVvMx3MYv_3HFGsqfM1Xi2c(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/ProxyManager;->lambda$scheduleUpdateProxyClientsIfNeededLocked$5(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$SWKc47RV4-Dlnwnc-bJ2MISkg7s(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateStateForRemovedDisplay$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpxX2LrMO_IhcQQh-xg9yrVDFls(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateFocusAppearanceLocked$8(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bj5DhX-UOcrwlUDeQSQTtpodK1Q(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$updateRelevantEventTypesLocked$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNaPvLpzR9C1yY4cKsZUoWdzWW8(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->lambda$registerProxy$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearConnectionAndUpdateState(Lcom/android/server/accessibility/ProxyManager;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/accessibility/UiAutomationManager;Lcom/android/server/accessibility/ProxyManager$SystemSupport;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 134
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 136
    iput-object p3, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 137
    iput-object p4, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    .line 138
    iput-object p5, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 139
    iput-object p6, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 140
    const-class p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-void
.end method

.method private synthetic lambda$registerProxy$0(I)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplayIfInstalled(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$6(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 1

    .line 632
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p1, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getRecommendedTimeoutMillisLocked(I)J

    move-result-wide p0

    .line 634
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    .line 636
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$scheduleNotifyProxyClientsOfServicesStateChangeLocked$7(I)V
    .locals 1

    .line 631
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$scheduleUpdateProxyClientsIfNeededLocked$4(IILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 1

    .line 611
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p0, :cond_0

    .line 612
    iget-object p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$scheduleUpdateProxyClientsIfNeededLocked$5(II)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda9;-><init>(II)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 615
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$updateFocusAppearanceLocked$8(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 2

    .line 656
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 657
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    .line 658
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result v0

    .line 659
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result p0

    .line 657
    invoke-interface {p1, v0, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setFocusAppearance(II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFocusAppearanceLocked$9(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 1

    .line 655
    new-instance v0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$updateRelevantEventTypesLocked$2(ILcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 1

    .line 458
    iget v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v0, p1, :cond_0

    .line 459
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result p0

    .line 460
    iget p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq p1, p0, :cond_0

    .line 461
    iput p0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 462
    iget-object p1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateRelevantEventTypesLocked$3(I)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-static {v1}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 466
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$updateStateForRemovedDisplay$1(I)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 272
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplayIfInstalled(Landroid/view/Display;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addServiceInterfacesLocked(Ljava/util/List;I)V
    .locals 3

    const/4 v0, 0x0

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 502
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 504
    iget-object v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 505
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 507
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final broadcastToClientsLocked(Ljava/util/function/Consumer;)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 680
    invoke-interface {v0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 681
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 682
    invoke-interface {p0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object p0

    .line 683
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 684
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 365
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 366
    iget-boolean v2, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public clearCacheLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 822
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 824
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    .line 825
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearConnectionAndUpdateState(I)Z
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 247
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->updateStateForRemovedDisplay(II)V

    :cond_1
    return v2

    :catchall_0
    move-exception p0

    .line 247
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clearConnections(I)V
    .locals 6

    .line 209
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 210
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    .line 211
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 213
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 215
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDisplayId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_1
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 220
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 218
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 475
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 476
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 477
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_1

    .line 478
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v4, v5, :cond_1

    .line 479
    invoke-virtual {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v3

    or-int/2addr v2, v3

    .line 480
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 481
    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 480
    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageAllowlist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public displayBelongsToCaller(II)Z
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    .line 326
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDevice;

    .line 332
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Proxy manager state:"

    .line 853
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Number of proxy connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Registered proxy connections:"

    .line 855
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 857
    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 858
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 859
    invoke-interface {v2}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v2

    const/4 v3, 0x0

    .line 860
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 861
    iget-object v4, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 862
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v4, :cond_0

    .line 864
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 866
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "        User clients for proxy\'s virtual device id"

    .line 867
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v5

    invoke-virtual {p0, p2, v1, v5}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    .line 869
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "        Global clients for proxy\'s virtual device id"

    .line 870
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v4}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    invoke-virtual {p0, p2, v2, v4}, Lcom/android/server/accessibility/ProxyManager;->printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirstDeviceIdForUidLocked(I)I
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 771
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object p0

    .line 772
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 773
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 774
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    return v0
.end method

.method public final getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
    .locals 3

    const/4 v0, 0x0

    .line 667
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 668
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 669
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFocusColorLocked(I)I
    .locals 0

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusColorLocked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFocusStrokeWidthLocked(I)I
    .locals 0

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getFocusStrokeWidthLocked()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getInstalledAndEnabledServiceInfosLocked(II)Ljava/util/List;
    .locals 5

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 521
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 522
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 523
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_2

    .line 524
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v3

    if-ne v3, p2, :cond_2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 527
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 528
    :cond_0
    iget v3, v2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 530
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInstalledAndEnabledServices()Ljava/util/List;

    move-result-object v2

    .line 532
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 533
    iget v4, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    .line 534
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getLastSentStateLocked(I)I
    .locals 1

    .line 431
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    .line 841
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 843
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLocalVdm:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public getRecommendedTimeoutMillisLocked(I)J
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 720
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 721
    iget-object v3, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 722
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v3, :cond_0

    .line 723
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 725
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getInteractiveTimeout()I

    move-result v4

    .line 727
    invoke-virtual {v3}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getNonInteractiveTimeout()I

    move-result v3

    .line 728
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 730
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getStateForDisplayIdLocked(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)I
    .locals 0

    if-eqz p1, :cond_1

    .line 412
    iget-boolean p0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStateLocked(I)I
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v0

    const/4 v1, 0x0

    .line 386
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 388
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_0

    .line 389
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ProxyManager;->getStateForDisplayIdLocked(Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)I

    move-result v2

    or-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isProxyedDeviceId(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 316
    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isProxyedDisplay(I)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    .line 302
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 303
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProxyChanged(I)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(I)V

    .line 583
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->updateWindowsForAccessibilityCallbackLocked()V

    .line 585
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateRelevantEventTypesLocked(I)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleUpdateProxyClientsIfNeededLocked(I)V

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->updateFocusAppearanceLocked(I)V

    .line 592
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {p0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->notifyClearAccessibilityCacheLocked()V

    .line 593
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final printClientsForDeviceId(Ljava/io/PrintWriter;Landroid/os/RemoteCallbackList;I)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    .line 880
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 883
    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 884
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    if-ne v1, p3, :cond_0

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "            "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerProxy(Landroid/accessibilityservice/IAccessibilityServiceClient;IILcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p2

    .line 155
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v2, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {v2, v15}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v16

    .line 163
    new-instance v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    const/4 v2, 0x3

    .line 164
    invoke-virtual {v5, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyClass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "ProxyPackage"

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 169
    new-instance v14, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v2, v14

    move/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object v1, v14

    move/from16 v14, p2

    move/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Landroid/accessibilityservice/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager;II)V

    .line 175
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 176
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    move/from16 v4, p2

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    new-instance v2, Lcom/android/server/accessibility/ProxyManager$1;

    move-object v3, v1

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v4}, Lcom/android/server/accessibility/ProxyManager$1;-><init>(Lcom/android/server/accessibility/ProxyManager;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 188
    invoke-interface/range {p1 .. p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 190
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->initializeServiceInterface(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    return-void

    :catchall_0
    move-exception v0

    .line 177
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateProxyClientsIfNeededLocked(I)V
    .locals 3

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getStateLocked(I)I

    move-result v0

    .line 606
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getLastSentStateLocked(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 607
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->setLastStateLocked(II)V

    .line 608
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/ProxyManager;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 346
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 347
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz p0, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public setAccessibilityInputFilter(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    .line 836
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-void
.end method

.method public final setLastStateLocked(II)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public unregisterProxy(I)Z
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnectionAndUpdateState(I)Z

    move-result p0

    return p0
.end method

.method public final updateDeviceIdsIfNeededLocked(I)V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 786
    invoke-interface {v0}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getCurrentUserClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    .line 788
    invoke-interface {v1}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->getGlobalClientsLocked()Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 790
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    .line 791
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/ProxyManager;->updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public final updateDeviceIdsIfNeededLocked(ILandroid/os/RemoteCallbackList;)V
    .locals 4

    .line 799
    invoke-virtual {p0}, Lcom/android/server/accessibility/ProxyManager;->getLocalVdm()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 806
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 807
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    .line 808
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    iput p1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mDeviceId:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateFocusAppearanceLocked(I)V
    .locals 2

    .line 652
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->getFirstProxyForDeviceIdLocked(I)Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final updateRelevantEventTypesLocked(I)V
    .locals 2

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateStateForRemovedDisplay(II)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingDisplayProxy(I)V

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/ProxyManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->isProxyedDeviceId(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mSystemSupport:Lcom/android/server/accessibility/ProxyManager$SystemSupport;

    invoke-interface {v0, p2}, Lcom/android/server/accessibility/ProxyManager$SystemSupport;->removeDeviceIdLocked(I)V

    .line 285
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager;->mLastStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 286
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 289
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(I)V

    :goto_0
    return-void
.end method

.method public updateTimeoutsIfNeeded(II)V
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 700
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/android/server/accessibility/ProxyManager;->mProxyA11yServiceConnections:Landroid/util/SparseArray;

    .line 702
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    if-eqz v2, :cond_0

    .line 704
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->updateTimeouts(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    invoke-virtual {v2}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/ProxyManager;->scheduleNotifyProxyClientsOfServicesStateChangeLocked(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
