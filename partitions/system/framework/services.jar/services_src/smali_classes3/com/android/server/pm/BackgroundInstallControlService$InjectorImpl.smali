.class public final Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;
.super Ljava/lang/Object;
.source "BackgroundInstallControlService.java"

# interfaces
.implements Lcom/android/server/pm/BackgroundInstallControlService$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDiskFile()Ljava/io/File;
    .locals 2

    .line 582
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "bic"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "states"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 3

    .line 573
    new-instance p0, Lcom/android/server/ServiceThread;

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "BackgroundInstallControlService"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 575
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 576
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 558
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 0

    .line 568
    const-class p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .locals 0

    .line 563
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method
