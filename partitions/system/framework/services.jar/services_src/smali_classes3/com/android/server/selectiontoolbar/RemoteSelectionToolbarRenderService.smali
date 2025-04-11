.class final Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteSelectionToolbarRenderService.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mRemoteCallback:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$54QppKhn08G0SZ4q9vg9K8TWNj4(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->lambda$onShow$0(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aq4-YjTRTqls3FgluWqL4EDwkU8(JLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->lambda$onHide$1(JLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qoZRUE77Hi54zQKwkl08bzOTUCA(IJLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->lambda$onDismiss$2(IJLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.selectiontoolbar.SelectionToolbarRenderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda0;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    iput-object p2, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public static synthetic lambda$onDismiss$2(IJLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onDismiss(IJ)V

    return-void
.end method

.method public static synthetic lambda$onHide$1(JLandroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onHide(J)V

    return-void
.end method

.method public static synthetic lambda$onShow$0(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    return-void
.end method


# virtual methods
.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onDismiss(IJ)V
    .locals 1

    new-instance v0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda1;-><init>(IJ)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public onHide(J)V
    .locals 1

    new-instance v0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    check-cast p1, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->onServiceConnectionStatusChanged(Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;Z)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService;->mRemoteCallback:Landroid/os/IBinder;

    invoke-interface {p1, p0}, Landroid/service/selectiontoolbar/ISelectionToolbarRenderService;->onConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteSelectionToolbarRenderService"

    const-string p2, "Exception calling onConnected()."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onShow(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/selectiontoolbar/RemoteSelectionToolbarRenderService$$ExternalSyntheticLambda2;-><init>(ILandroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method
