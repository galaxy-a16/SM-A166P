.class public final Lcom/android/server/locales/LocaleManagerServicePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LocaleManagerServicePackageMonitor.java"


# instance fields
.field public mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field public mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field public mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/SystemAppUpdateTracker;Lcom/android/server/locales/LocaleManagerService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 46
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 47
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageDataCleared(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageRemoved(Ljava/lang/String;I)V

    .line 63
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->deleteOverrideLocaleConfig(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 69
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/SystemAppUpdateTracker;->onPackageUpdateFinished(Ljava/lang/String;I)V

    return-void
.end method
