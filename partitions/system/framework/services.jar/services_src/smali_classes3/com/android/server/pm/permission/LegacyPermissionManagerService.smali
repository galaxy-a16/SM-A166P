.class public Lcom/android/server/pm/permission/LegacyPermissionManagerService;
.super Landroid/permission/ILegacyPermissionManager$Stub;
.source "LegacyPermissionManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field public final mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;


# direct methods
.method public static synthetic $r8$lambda$-aWwU1owjk7KOdLeITDm6CjqtYU(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToEnabledImsServices$3([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$0_bNm4EqOvDoyzB1gIQAq_RXFYk(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$5([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JAKyiva-GyLkA3X4PWffTiE9ojc(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToActiveLuiApp$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S82vq-IQ7y7MC3oUIkzPRVgF6fw(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToCarrierServiceApp$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UV4fjZFs5oCtcy8XghzvdTBIqpA(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$4([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cSsNoRJieGF6sBAHGMs_UO1CCdQ(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$revokeDefaultPermissionsFromLuiApps$2([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dFGc7T-ZZgu7EcBj3lhTLuMlGAc(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->lambda$grantDefaultPermissionsToEnabledCarrierApps$6([Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultPermissionGrantPolicy(Lcom/android/server/pm/permission/LegacyPermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V

    .line 83
    new-instance p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal-IA;)V

    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string p1, "legacy_permission"

    .line 84
    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/permission/ILegacyPermissionManager$Stub;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    .line 91
    new-instance p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p2, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .locals 2

    .line 70
    const-class v0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    :cond_0
    return-object v1
.end method

.method private synthetic lambda$grantDefaultPermissionsToActiveLuiApp$1(Ljava/lang/String;I)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToCarrierServiceApp$0(Ljava/lang/String;I)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToEnabledCarrierApps$6([Ljava/lang/String;I)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToEnabledImsServices$3([Ljava/lang/String;I)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 287
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$grantDefaultPermissionsToEnabledTelephonyDataServices$4([Ljava/lang/String;I)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$5([Ljava/lang/String;I)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$revokeDefaultPermissionsFromLuiApps$2([Ljava/lang/String;I)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10

    .line 97
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    .line 99
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/AppOpsManager;

    :try_start_0
    const-string v5, "android:read_device_identifiers"

    move v6, p5

    move-object v7, p1

    move-object v8, p3

    move-object v9, p2

    .line 116
    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 125
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string p2, "device_policy"

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_3

    .line 127
    invoke-virtual {p0, p1, p4, p5}, Landroid/app/admin/DevicePolicyManager;->hasDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :catchall_0
    move-exception p1

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->restoreCallingIdentity(J)V

    .line 122
    throw p1

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public final checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6

    if-eqz p2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0, p2, p6, p7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string p2, "appops"

    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AppOpsManager;

    move-object v1, p3

    move v2, p7

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    move-object/from16 v11, p2

    move/from16 v12, p5

    .line 138
    invoke-virtual {p0, v9, v11, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V

    .line 139
    iget-object v0, v8, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v10, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    return v13

    :cond_0
    const/4 v0, -0x1

    if-nez v9, :cond_1

    return v0

    .line 154
    :cond_1
    :try_start_0
    iget-object v1, v8, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v1, v9, v12}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 155
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    move v1, v13

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android:read_phone_state"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 165
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    return v0

    :cond_3
    move v14, v0

    const/4 v2, 0x0

    const-string v3, "android:write_sms"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 173
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_4

    return v13

    :cond_4
    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    const-string v3, "android:read_phone_numbers"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 178
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_5

    return v13

    :cond_5
    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android:read_sms"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 184
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->checkPermissionAndAppop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_6

    return v13

    :cond_6
    return v14
.end method

.method public grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V
    .locals 2

    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantDefaultPermissionsToActiveLuiApp"

    .line 266
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 268
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "grantDefaultPermissionsForCarrierServiceApp"

    .line 257
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    .locals 2

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantPermissionsToEnabledCarrierApps"

    .line 314
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 316
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V
    .locals 2

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantDefaultPermissionsToEnabledImsServices"

    .line 284
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 286
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 2

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    .line 294
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 296
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V
    .locals 2

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    .line 304
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 306
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V
    .locals 2

    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "revokeDefaultPermissionsFromLuiApps"

    .line 275
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrPhoneCaller(Ljava/lang/String;I)V

    .line 277
    new-instance v0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/permission/LegacyPermissionManagerService;[Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final verifyCallerCanCheckAccess(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingUid()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getCallingPid()I

    move-result v1

    .line 198
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x2710

    if-lt v2, v5, :cond_1

    if-ne v0, p4, :cond_0

    if-eq v1, p3, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz p1, :cond_3

    .line 204
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-lt v6, v5, :cond_3

    .line 205
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mInjector:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Injector;->getPackageUidForUser(Ljava/lang/String;I)I

    move-result p0

    if-eq p4, p0, :cond_3

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string v2, "193441322"

    aput-object v2, p0, v4

    .line 208
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-lt v2, v5, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, p4

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v3

    const/4 v2, 0x2

    const-string v4, "Package uid mismatch"

    aput-object v4, p0, v2

    const v2, 0x534e4554

    .line 207
    invoke-static {v2, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    if-nez v3, :cond_4

    return-void

    .line 216
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v6, p1

    move-object v9, p2

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Calling uid %d, pid %d cannot access for package %s (uid=%d, pid=%d): %s"

    .line 214
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PermissionManager"

    .line 217
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
