.class public Lcom/android/server/devicepolicy/DualDarProvisioningHelper;
.super Ljava/lang/Object;
.source "DualDarProvisioningHelper.java"


# instance fields
.field public connection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/devicepolicy/DualDarProvisioningHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/UserManagerInternal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper$5;-><init>(Lcom/android/server/devicepolicy/DualDarProvisioningHelper;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->connection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method

.method public static getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    const-string/jumbo v0, "persona"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isDualDARConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "DualDarProvisioningHelper"

    if-eqz p1, :cond_0

    const-string v2, "dualdar-config"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "isDualDARConfigured from provisioning params"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "isDualDARConfigured from preset params"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDualDarProfileFlags(Landroid/app/admin/ManagedProfileProvisioningParams;)I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public onCreateAndProvisioningManagedProfileCompletedForDualDar(Landroid/app/admin/ManagedProfileProvisioningParams;I)V
    .locals 0

    return-void
.end method

.method public onCreateAndProvisioningManagedProfileStartedForDualDar(Landroid/app/admin/ManagedProfileProvisioningParams;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/admin/ManagedProfileProvisioningParams;->getAdminExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->isDualDARConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    const-string/jumbo v0, "onCreateAndProvisionManagedProfileStarted failed : not support dualdar"

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public onProvisionFullyManagedDeviceCompletedForDualDar(Landroid/app/admin/FullyManagedDeviceProvisioningParams;)V
    .locals 0

    return-void
.end method

.method public onProvisionFullyManagedDeviceStartedForDualDar(Landroid/app/admin/FullyManagedDeviceProvisioningParams;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->getAdminExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DualDarProvisioningHelper;->isDualDARConfigured(Landroid/content/Context;Landroid/os/PersistableBundle;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    const-string/jumbo v0, "onProvisionFullyManagedDeviceStarted failed : not support dualdar managed device"

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
