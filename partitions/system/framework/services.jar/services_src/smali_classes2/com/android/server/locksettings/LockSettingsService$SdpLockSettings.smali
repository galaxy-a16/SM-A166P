.class public Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# instance fields
.field public service:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public static synthetic $r8$lambda$sdM3kiodHn_zirO_Z5tup2WwXJA(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->lambda$migrateWithAuthToken$0(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 5938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5939
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    return-void
.end method

.method public static synthetic lambda$migrateWithAuthToken$0(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V
    .locals 2

    .line 5967
    invoke-virtual {p2, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->getMasterKeyVersion(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 5969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MK migration required for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5970
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSdpMasterKey()[B

    move-result-object v0

    .line 5971
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSdpMasterKeyPersonalized()[B

    move-result-object p1

    .line 5970
    invoke-virtual {p2, v0, p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->updateMasterKey([B[BI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5972
    invoke-virtual {p2, p1, p0}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->setMasterKeyVersion(II)V

    const-string p0, "MK migration success!"

    .line 5974
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSdpManagerInternal()Ljava/util/Optional;
    .locals 0

    .line 5943
    const-class p0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 5945
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final isSdpUser(I)Z
    .locals 1

    .line 5956
    invoke-static {p1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 5957
    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEnterpriseUser(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmDualDarLockSettings(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    move-result-object p0

    .line 5958
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;->isDualDARUser(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public migrateWithAuthToken(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5963
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->isSdpUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmSpManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5964
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->getSdpManagerInternal()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;-><init>(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
