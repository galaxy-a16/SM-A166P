.class public final Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SelectionToolbarManagerServiceImpl.java"


# instance fields
.field public mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field public mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

.field public final mRemoteServiceCallback:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;


# direct methods
.method public static bridge synthetic -$$Nest$mtransferTouchFocus(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;Ljava/lang/Object;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 50
    new-instance p1, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;-><init>(Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback-IA;)V

    iput-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;

    .line 56
    const-class p1, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->updateRemoteServiceLocked()V

    return-void
.end method

.method public static getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 129
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    int-to-long v1, v1

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get serviceInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public dismissToolbar(J)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->onDismiss(IJ)V

    :cond_0
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl$SelectionToolbarRenderServiceRemoteCallback;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    return-object p0
.end method

.method public hideToolbar(J)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->onHide(J)V

    :cond_0
    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->ensureRemoteServiceLocked()Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    :cond_0
    return-void
.end method

.method public final transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerInternal;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    return-void
.end method

.method public updateLocked(Z)Z
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    .line 71
    invoke-virtual {p0}, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->updateRemoteServiceLocked()V

    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    if-eqz v0, :cond_0

    const-string v0, "SelectionToolbarManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerServiceImpl;->mRemoteService:Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;

    :cond_0
    return-void
.end method
