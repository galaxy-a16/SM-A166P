.class public abstract Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PackageManagerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public isPackageDisappearing(Ljava/lang/String;)I
    .locals 0

    .line 520
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .locals 0

    .line 524
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .line 0
    return-void
.end method
