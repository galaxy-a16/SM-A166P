.class public final Lcom/android/server/pm/AsecInstallArgs;
.super Ljava/lang/Object;
.source "AsecInstallArgs.java"


# instance fields
.field public cid:Ljava/lang/String;

.field public isException:Z

.field public final mAbiOverride:Ljava/lang/String;

.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mForceQueryableOverride:Z

.field public final mInstallFlags:I

.field public final mInstallGrantPermissions:[Ljava/lang/String;

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public mInstructionSets:[Ljava/lang/String;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageSource:I

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mTraceCookie:I

.field public final mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;

.field public packagePath:Ljava/lang/String;

.field public resourcePath:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$RDa0G9ykyP2IXNkpo8pVHCCmGkg(Lcom/android/server/pm/AsecInstallArgs;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AsecInstallArgs;->lambda$pendingPostDeleteLI$0(ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLcom/android/server/pm/PackageManagerService;)V
    .locals 2

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    move-object/from16 v1, p22

    .line 87
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    move v1, p4

    .line 90
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mInstallFlags:I

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 92
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallSource;

    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    move-object v1, p6

    .line 93
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mVolumeUuid:Ljava/lang/String;

    move-object v1, p7

    .line 94
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mUser:Landroid/os/UserHandle;

    move-object v1, p8

    .line 95
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mInstructionSets:[Ljava/lang/String;

    move-object v1, p9

    .line 96
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mAbiOverride:Ljava/lang/String;

    move-object v1, p10

    .line 97
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mInstallGrantPermissions:[Ljava/lang/String;

    move-object v1, p11

    .line 98
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    move v1, p12

    .line 99
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mAutoRevokePermissionsMode:I

    move-object v1, p13

    .line 100
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mTraceMethod:Ljava/lang/String;

    move/from16 v1, p14

    .line 101
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mTraceCookie:I

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move/from16 v1, p16

    .line 103
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mInstallReason:I

    move/from16 v1, p17

    .line 104
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mInstallScenario:I

    move/from16 v1, p18

    .line 105
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mForceQueryableOverride:Z

    move/from16 v1, p19

    .line 106
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mDataLoaderType:I

    move/from16 v1, p20

    .line 107
    iput v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mPackageSource:I

    move/from16 v1, p21

    .line 108
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->mApplicationEnabledSettingPersistent:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 23

    move-object/from16 v8, p0

    .line 132
    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/AsecInstallHelper;->isAsecExternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    sget-object v5, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move-object/from16 v22, p3

    invoke-direct/range {v0 .. v22}, Lcom/android/server/pm/AsecInstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLcom/android/server/pm/PackageManagerService;)V

    move-object/from16 v1, p1

    .line 137
    iput-object v1, v0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 139
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    .line 141
    iput-boolean v1, v0, Lcom/android/server/pm/AsecInstallArgs;->isException:Z

    const-string v0, "PackageManager"

    const-string v1, "Catch nullpointer exception"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;ZLcom/android/server/pm/PackageManagerService;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v4, p1

    .line 113
    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v5, 0x8

    move/from16 v22, v5

    goto :goto_0

    :cond_0
    move/from16 v22, v0

    :goto_0
    sget-object v5, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v22

    move-object/from16 v8, p2

    move-object/from16 v22, p4

    invoke-direct/range {v0 .. v22}, Lcom/android/server/pm/AsecInstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLcom/android/server/pm/PackageManagerService;)V

    const-string/jumbo v0, "pkg.apk"

    move-object/from16 v1, p1

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string v1, "/"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v0}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$pendingPostDeleteLI$0(ZI)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    add-int/lit8 p2, p2, 0x1

    .line 286
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(ZI)Z

    .line 287
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final cleanUp()V
    .locals 2

    const-string v0, "PackageManager"

    const-string v1, "cleanUp"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    return-void
.end method

.method public final cleanUpResourcesLI(Ljava/util/List;)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUp()V

    .line 236
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->mInstructionSets:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AsecInstallArgs;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method

.method public doPostDeleteLI(Z)Z
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doPostDeleteLI() del="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AsecInstallArgs;->pendingPostDeleteLI(ZI)Z

    move-result p0

    return p0
.end method

.method public doPostInstall(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUp()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    if-lt p2, v0, :cond_3

    .line 196
    iget-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 197
    invoke-static {p2, v0, v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 205
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    :cond_2
    :goto_0
    return p1

    .line 198
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to finalize "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    const/16 p0, -0x12

    return p0
.end method

.method public doPreInstall(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->setMountPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x12

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method public final getAllCodePaths()Ljava/util/List;
    .locals 2

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 223
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object p0

    const/4 v1, 0x0

    .line 224
    invoke-static {p0, v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 226
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {p0}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 231
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExternalAsec()Z
    .locals 0

    .line 174
    iget p0, p0, Lcom/android/server/pm/AsecInstallArgs;->mInstallFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final pendingPostDeleteLI(ZI)Z
    .locals 7

    .line 266
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsecInstallArgs.doPostDeleteLI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", codePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    .line 272
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ResourcesManager;->invalidatePath(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 277
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 280
    iget-object v2, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    xor-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const/4 v2, 0x5

    if-ge p2, v2, :cond_2

    .line 284
    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/pm/AsecInstallArgs$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AsecInstallArgs;ZI)V

    const v5, 0xea60

    mul-int/2addr v5, p2

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v3, 0x4

    if-ne p2, v3, :cond_3

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASEC unmount failed and will try for last chance: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/AsecInstallArgs;->cid:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AsecInstallArgs;->cleanUpResourcesLI(Ljava/util/List;)V

    :cond_4
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V
    .locals 7

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    .line 244
    invoke-static {p2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->useArtService()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AsecInstallArgs;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallArgs;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Lcom/android/server/pm/Installer;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Lcom/android/server/pm/Installer$LegacyDexoptDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 252
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 242
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "instructionSet == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final setMountPath(Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "pkg.apk"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    .line 186
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->packagePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallArgs;->resourcePath:Ljava/lang/String;

    return-void
.end method
