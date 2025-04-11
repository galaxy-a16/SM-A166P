.class public Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceExt.java"


# instance fields
.field public final packageManagerHelper:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;->packageManagerHelper:Lcom/android/server/om/PackageManagerHelper;

    return-void
.end method


# virtual methods
.method public getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;->packageManagerHelper:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageStateForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    :goto_0
    return-object p0
.end method
