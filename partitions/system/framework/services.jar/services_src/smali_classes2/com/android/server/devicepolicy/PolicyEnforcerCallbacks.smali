.class public abstract Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;
.super Ljava/lang/Object;
.source "PolicyEnforcerCallbacks.java"


# direct methods
.method public static synthetic $r8$lambda$-zEkQfrCw_373vb9MgXirr-ntDw(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$addPersistentPreferredActivity$3(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2GlS2QzVnkS_4P90AJCN2BIOcLA(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setAutoTimezoneEnabled$0(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3HpZ_b56-BDdPVdjcdBBExwJNuM(Ljava/lang/Boolean;Landroid/content/Context;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setPersonalAppsSuspended$9(Ljava/lang/Boolean;Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D90xUiBf28UyXf6fDNZegIMOHS4(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUninstallBlocked$4(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EFLHTCorVsrMlykVW0ep3tzcY3c(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUserRestriction$5(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gx47R_gmpU_jbxUquZ47pllfXg0(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setPermissionGrantState$1(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HikVsxI8UlbvuWnKuPB-lY0elJ0(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setApplicationHidden$6(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P9McFxKl_Z7EI9zdN8O9ii49fdM(ILjava/util/Set;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setUserControlDisabledPackages$2(ILjava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R8qbWeDRTocJxxz-eQSwCFArpzQ()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$updateScreenCaptureDisabled$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$w8cQA4pwgGoI43Yb17VTwH5MW_8(ILjava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->lambda$setScreenCaptureDisabled$7(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 0

    .line 187
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static getPermissionControllerManager(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-class p1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;

    return-object p0

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/permission/PermissionControllerManager;

    .line 127
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic lambda$addPersistentPreferredActivity$3(Landroid/app/admin/PolicyKey;Landroid/content/ComponentName;I)V
    .locals 1

    .line 189
    :try_start_0
    instance-of v0, p0, Landroid/app/admin/IntentFilterPolicyKey;

    if-eqz v0, :cond_1

    .line 193
    check-cast p0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 195
    invoke-virtual {p0}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/content/IntentFilter;

    .line 197
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 199
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/content/pm/IPackageManager;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 204
    :goto_0
    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    goto :goto_1

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type IntentFilterPolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "PolicyEnforcerCallbacks"

    const-string p2, "Error adding/removing persistent preferred activity"

    .line 207
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static synthetic lambda$setApplicationHidden$6(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 1

    .line 252
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_1

    .line 256
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 257
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 259
    :goto_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$setAutoTimezoneEnabled$0(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 73
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    .line 76
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setPermissionGrantState$1(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)Ljava/lang/Boolean;
    .locals 4

    .line 86
    instance-of v0, p0, Landroid/app/admin/PackagePermissionPolicyKey;

    if-eqz v0, :cond_1

    .line 90
    check-cast p0, Landroid/app/admin/PackagePermissionPolicyKey;

    .line 91
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPermissionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 100
    :goto_0
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;-><init>(Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback-IA;)V

    .line 103
    new-instance v1, Landroid/permission/AdminPermissionControlParams;

    .line 104
    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/admin/PackagePermissionPolicyKey;->getPermissionName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p0, p2, v3}, Landroid/permission/AdminPermissionControlParams;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 106
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->getPermissionControllerManager(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/permission/PermissionControllerManager;

    move-result-object p0

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;

    invoke-direct {p3, v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;)V

    .line 108
    invoke-virtual {p0, p2, v1, p1, p3}, Landroid/permission/PermissionControllerManager;->setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 111
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x4e20

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$BlockingCallback;->await(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 114
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "policyKey is not of type PermissionGrantStatePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$setPersonalAppsSuspended$9(Ljava/lang/Boolean;Landroid/content/Context;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 296
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V

    goto :goto_0

    .line 298
    :cond_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const-string p1, "android"

    .line 299
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setScreenCaptureDisabled$7(ILjava/lang/Boolean;)V
    .locals 2

    .line 268
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    .line 269
    instance-of v1, v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz v1, :cond_1

    .line 270
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 271
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->setScreenCaptureDisallowedUser(IZ)V

    .line 273
    invoke-static {}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->updateScreenCaptureDisabled()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$setUninstallBlocked$4(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 1

    .line 217
    instance-of v0, p0, Landroid/app/admin/PackagePolicyKey;

    if-eqz v0, :cond_1

    .line 221
    check-cast p0, Landroid/app/admin/PackagePolicyKey;

    .line 222
    invoke-virtual {p0}, Landroid/app/admin/PackagePolicyKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 223
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setUninstallBlockedUnchecked(Ljava/lang/String;ZI)V

    .line 227
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type PackagePolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$setUserControlDisabledPackages$2(ILjava/util/Set;)V
    .locals 3

    .line 173
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 176
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    .line 174
    :goto_0
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManagerInternal;->setOwnerProtectedPackages(ILjava/util/List;)V

    .line 177
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-nez p1, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 178
    :goto_1
    invoke-virtual {v0, v1, p0}, Landroid/app/usage/UsageStatsManagerInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    return-void
.end method

.method public static synthetic lambda$setUserRestriction$5(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 235
    instance-of v0, p0, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz v0, :cond_1

    .line 239
    check-cast p0, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 241
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 243
    invoke-virtual {p0}, Landroid/app/admin/UserRestrictionPolicyKey;->getRestriction()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 242
    :goto_0
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 244
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policyKey is not of type UserRestrictionPolicyKey, passed in policyKey is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic lambda$updateScreenCaptureDisabled$8()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "window"

    .line 283
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Landroid/view/IWindowManager;->refreshScreenCaptureDisabled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PolicyEnforcerCallbacks"

    const-string v2, "Unable to notify WindowManager."

    .line 286
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setApplicationHidden(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 1

    .line 251
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setAutoTimezoneEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Z
    .locals 1

    .line 72
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Z
    .locals 1

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    .line 143
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V

    .line 144
    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateLockTaskFeaturesLocked(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setPermissionGrantState(Ljava/lang/Integer;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 2

    .line 85
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, p1, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setPersonalAppsSuspended(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 0

    .line 294
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Boolean;Landroid/content/Context;I)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setScreenCaptureDisabled(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 0

    .line 267
    new-instance p1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Boolean;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setUninstallBlocked(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 1

    .line 216
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p0, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setUserControlDisabledPackages(Ljava/util/Set;I)Z
    .locals 2

    .line 168
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    .line 168
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->updateProtectedPackages(ILjava/util/List;)V

    .line 172
    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda5;-><init>(ILjava/util/Set;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setUserRestriction(Ljava/lang/Boolean;Landroid/content/Context;ILandroid/app/admin/PolicyKey;)Z
    .locals 1

    .line 234
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;

    invoke-direct {v0, p3, p2, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;-><init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static suspendPersonalAppsInPackageManager(Landroid/content/Context;I)V
    .locals 2

    .line 306
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->forUser(Landroid/content/Context;I)Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    move-result-object p0

    .line 308
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, p1, p0, v1}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(I[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to suspend apps: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PolicyEnforcerCallbacks"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static updateScreenCaptureDisabled()V
    .locals 2

    .line 280
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
