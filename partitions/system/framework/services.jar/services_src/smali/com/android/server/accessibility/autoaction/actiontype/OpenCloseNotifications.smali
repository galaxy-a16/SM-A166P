.class public Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "OpenCloseNotifications.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getStringResId()I
    .locals 1

    .line 0
    const v0, 0x104011c

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "statusbar"

    .line 47
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    move-result p0

    .line 50
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->getPanelExpandStateToType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
