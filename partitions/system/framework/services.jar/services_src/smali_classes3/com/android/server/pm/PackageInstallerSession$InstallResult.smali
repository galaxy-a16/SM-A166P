.class public Lcom/android/server/pm/PackageInstallerSession$InstallResult;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V
    .locals 0

    .line 2990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2991
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    .line 2992
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    return-void
.end method
