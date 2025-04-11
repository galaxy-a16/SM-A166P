.class public abstract Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getEdmsInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method


# virtual methods
.method public abstract getActiveAdminPackageName(I)Ljava/lang/String;
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveAdminsInfo(I)Ljava/util/List;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract getFirmwareUpgrade()Z
.end method

.method public abstract getOrganizationOwnedProfileUserId()I
.end method

.method public abstract getPseudoAdminUid()I
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isMdmAdminPresent()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract startDeferredServicesIfNeeded()V
.end method
