.class public Lcom/android/server/enterprise/utils/KpuHelper;
.super Ljava/lang/Object;
.source "KpuHelper.java"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/utils/KpuHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mKpuPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/utils/KpuHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/KpuHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    .line 53
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/utils/KpuHelper;->sInstance:Lcom/android/server/enterprise/utils/KpuHelper;

    return-object p0
.end method


# virtual methods
.method public getKpuPackageName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.samsung.android.knox.kpu"

    :goto_0
    return-object p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .locals 0

    .line 112
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public final getSepSignature()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    return-object p0
.end method

.method public isCallerKpu()Z
    .locals 4

    .line 174
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 181
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isCallerValidKpu(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const-string/jumbo v3, "ro.product_ship"

    const/4 v4, 0x1

    .line 76
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 77
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "KPU app does not have a valid signature.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_4
    :goto_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 86
    iget-boolean v3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez v3, :cond_6

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ne v0, p1, :cond_5

    goto :goto_2

    .line 87
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "KPU userId does not match with ContextInfo.mContainerId.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->isDoPresent()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 96
    iput-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    return v4

    .line 94
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "KPU cannot apply policies in user 0 space if DO is not present on device.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 102
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isLegacyContainer(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 105
    iput-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mKpuPackageName:Ljava/lang/String;

    return v4

    .line 103
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "KPU must be inside PO to be able to call container or parent APIs.."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    return v2
.end method

.method public final isDoPresent()Z
    .locals 4

    .line 120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 122
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 123
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 129
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "KpuHelper"

    const-string v3, "Failed to retrieve DO on device"

    .line 127
    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    throw p0
.end method

.method public isKpuPackage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.knox.kpu"

    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isKpuPermissionGranted(I)Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isKpuPermissionGranted(Ljava/lang/String;I)Z
    .locals 2

    .line 199
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 201
    invoke-interface {p0, v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "KpuHelper"

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have KPU permission"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public isKpuPlatformSigned(Ljava/lang/String;I)Z
    .locals 3

    .line 138
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/utils/KpuHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getSepSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0, p2}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_0
    const-string p0, "android"

    .line 148
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v2

    :catch_0
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
