.class public final Lcom/android/server/pm/BackgroundInstallControlService$BinderService;
.super Landroid/content/pm/IBackgroundInstallControlService$Stub;
.source "BackgroundInstallControlService.java"


# instance fields
.field public final mService:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    return-void
.end method


# virtual methods
.method public getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 129
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "debug.transparency.bg-install-apps"

    .line 135
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;->getMockBackgroundInstalledPackages(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method
