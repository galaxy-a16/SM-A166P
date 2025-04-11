.class public Lcom/android/server/pm/InstallingSession;
.super Ljava/lang/Object;
.source "InstallingSession.java"


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mForceQueryableOverride:Z

.field public mInstallFlags:I

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public mIsMoveRequest:Z

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPreferredInstallLocation:I

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mRequireUserAction:I

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public mTraceCookie:I

.field public mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6BQHw-V6tA8AM83_Yx9WodKvEKo(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processInstallRequests$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMm0adiLirU_WUQB2n-uV_2oUyk(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/InstallingSession;->lambda$installStage$2(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqAz58gfMY0VtCnHUj5JtuK5HAM(Lcom/android/server/pm/InstallingSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/InstallingSession;->lambda$installStage$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$miWuDO4MIv7iYrWa4_5UxPiSXVY(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$installApexPackages$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qcJJdUbSxzQRpFt7gqDFyw3o8Sk(Lcom/android/server/pm/InstallingSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$tqRjKCgCJYNNnnY7Qw5M5BHLup8(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReturnCode(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartCopy(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessInstallRequests(Lcom/android/server/pm/InstallingSession;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    const/4 v1, -0x1

    .line 122
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 162
    iput-object p11, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 163
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 164
    new-instance p7, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {p7, p11}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 165
    new-instance p7, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {p7, p11}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    if-eqz p2, :cond_0

    .line 168
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p3}, Lcom/android/server/pm/OriginInfo;->fromStagedContainer(Ljava/lang/String;)Lcom/android/server/pm/OriginInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_0
    const/4 p2, 0x0

    .line 173
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 174
    iget-object p2, p6, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget p3, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p0, p2, p9, p3}, Lcom/android/server/pm/InstallingSession;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 176
    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 177
    iput-object p4, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 178
    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 179
    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 180
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 181
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 182
    invoke-virtual {p5}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    .line 183
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 184
    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 185
    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 186
    iget-boolean p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 187
    iget-object p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 189
    iget-wide p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p2, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 190
    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 191
    iput-object p10, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 192
    iget p2, p5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 193
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 194
    iget p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 195
    iget-boolean p1, p5, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    const/4 v1, -0x1

    .line 122
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 129
    iput-object p11, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 130
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 131
    new-instance p7, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {p7, p11}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 132
    new-instance p7, Lcom/android/server/pm/RemovePackageHelper;

    invoke-direct {p7, p11}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 133
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 134
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 135
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 136
    iput p4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 137
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 138
    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 139
    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 141
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p1, 0x3

    .line 143
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 144
    sget-object p1, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 145
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 146
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 147
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 148
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    const-wide/16 p1, -0x1

    .line 149
    iput-wide p1, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 150
    iput p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 151
    iput-object p10, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 152
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 153
    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 154
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 155
    iput-boolean v0, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    return-void
.end method

.method private synthetic lambda$installApexPackages$4(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    .line 901
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method private synthetic lambda$installStage$1()V
    .locals 1

    .line 594
    new-instance v0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 595
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$installStage$2(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V
    .locals 1

    .line 633
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V

    .line 634
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$processInstallRequests$3(Ljava/util/List;)V
    .locals 0

    .line 696
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackagesTraced(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 369
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 371
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 369
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 844
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveToUuid()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMovePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveFromCodePath()Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_0
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 848
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 851
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 854
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final copyApk(Lcom/android/server/pm/InstallRequest;)I
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0

    .line 378
    :cond_0
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 379
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForAsecInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0
.end method

.method public final copyApkForAsecInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 486
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    return v2

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateExternalStageCidLegacy()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 492
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->isPreloadApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 497
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1fd

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, -0x2

    const-string v1, "Failed to move app"

    .line 500
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    const-string p1, "PackageManager"

    .line 502
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x6e

    return p0

    .line 507
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/pm/AsecInstallHelper;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AsecInstallHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 508
    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/AsecInstallHelper;->copyPackage(Lcom/android/server/pm/InstallRequest;Ljava/lang/String;)I

    move-result p0

    if-eqz v2, :cond_3

    .line 513
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f9

    invoke-static {p1, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return p0
.end method

.method public final copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 9

    const-string v0, "Copying native libraries failed"

    const-string v1, "Failed to copy package"

    const-string v2, "PackageManager"

    const-string v3, "copyApk"

    const-wide/32 v4, 0x40000

    .line 387
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v6, v3, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 393
    iget-object p0, v3, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v7

    .line 398
    :cond_0
    :try_start_1
    iget v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 400
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v8, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 401
    invoke-virtual {v6, v8, v3}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 400
    invoke-virtual {p1, v3}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 411
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v3

    .line 410
    invoke-static {p0, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    if-eq p0, v7, :cond_2

    .line 414
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p1, p0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 420
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    .line 421
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v6

    const-string v8, "lib"

    invoke-direct {v3, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x0

    .line 424
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v6

    .line 426
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v8

    .line 425
    invoke-static {v6, v3, v8, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    if-eq p0, v7, :cond_3

    const-string v1, "Failed to copy native libraries"

    .line 429
    invoke-virtual {p1, p0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 437
    :cond_3
    :goto_1
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 433
    :try_start_6
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    .line 434
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 442
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 437
    :goto_3
    :try_start_7
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 438
    throw p0

    :catch_1
    move-exception p0

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create copy file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Failed to create copy file"

    const/4 v0, -0x4

    .line 406
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 442
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :catchall_1
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 443
    throw p0
.end method

.method public final copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 10

    .line 451
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v3, v1, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v7, v1, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v9, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 467
    invoke-static {p0}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Failed to move app"

    const/4 v2, -0x2

    .line 458
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    const-string p1, "PackageManager"

    const-string v1, "Failed to move app"

    .line 460
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    monitor-exit v0

    const/16 p0, -0x6e

    return p0

    .line 463
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final doAsecPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 9

    .line 783
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 784
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const-string v1, "PackageManager"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string p1, "cleanUp"

    .line 786
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 791
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x3e8

    if-nez v0, :cond_1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mounting container to get the Occupied size"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    .line 793
    invoke-static {p0, v0, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 797
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getUsedSpaceSecureContainer(Ljava/lang/String;)I

    move-result v0

    const/16 v4, -0x12

    if-ltz v0, :cond_3

    .line 801
    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unmount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " before trimming"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 805
    invoke-virtual {p1, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void

    :cond_2
    int-to-double v5, v0

    const-wide v7, 0x3ff07ae147ae147bL    # 1.03

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 813
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->trimSecureContainer(Ljava/lang/String;ILjava/lang/String;)Z

    .line 819
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mounting container before fixPerms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-static {p0, v0, v3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 825
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_7

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 826
    invoke-static {p0, v0, v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 834
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 836
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object p1

    .line 837
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 836
    invoke-static {p0, p1, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    :cond_6
    :goto_0
    return-void

    .line 827
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finalize "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 830
    invoke-virtual {p1, v4, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void
.end method

.method public final doAsecPreInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 762
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/AsecInstallHelper;->extractCidFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 764
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 766
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_0

    .line 768
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 771
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 770
    invoke-static {p0, v0, v1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 773
    invoke-static {p0, p1}, Lcom/android/server/pm/AsecInstallHelper;->setMountPath(Ljava/lang/String;Lcom/android/server/pm/InstallRequest;)V

    goto :goto_0

    :cond_1
    const/16 p0, -0x12

    const-string v0, "Error while mounting SdDir"

    .line 775
    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final doPostInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 744
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, p0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v0

    .line 750
    invoke-static {v0}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->doAsecPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 755
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final fixUpInstallReason(Ljava/lang/String;II)I
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return p3

    .line 550
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 551
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 550
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    .line 552
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p3
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 652
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final handleReturnCode(Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->processPendingInstall(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public final handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .locals 11

    .line 285
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 286
    iput v2, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 294
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    iget-wide v5, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v0, v5, v6, v1}, Lcom/android/server/pm/InstallPackageHelper;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 298
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v1, v2, :cond_2

    const-string p0, "Failed to verify version code"

    .line 300
    invoke-virtual {p1, v1, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void

    .line 305
    :cond_2
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v4

    .line 306
    :goto_1
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string v1, "PackageManager"

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgLite for install: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v3, v1, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v3, :cond_5

    iget v6, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x1

    if-ne v6, v3, :cond_5

    .line 314
    iget-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v8, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 319
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    if-nez v1, :cond_6

    .line 321
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 324
    invoke-static {v3}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PackageManager"

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found on sdcard, keep current location: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p1, v2}, Lcom/android/server/pm/InstallRequest;->setNeedToMove(Z)V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 323
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 330
    :cond_6
    :goto_2
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getNeedToMove()Z

    move-result v1

    if-nez v1, :cond_8

    .line 332
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 333
    iget-object v3, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-interface {v1, v3, v5, v6, v4}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 334
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    move v4, v2

    :cond_7
    if-nez v4, :cond_8

    .line 338
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/server/pm/InstallingSession;->mPreferredInstallLocation:I

    .line 339
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v4

    .line 337
    invoke-static {v1, v3, v4}, Lcom/android/server/pm/AsecInstallHelper;->canInstallOnExternal(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "PackageManager"

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move the app to sdcard later: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1, v2}, Lcom/android/server/pm/InstallRequest;->setNeedToMove(Z)V

    .line 345
    :cond_8
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/pm/InstallingSession;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v0, v2, :cond_9

    const-string p0, "Failed to override installation location"

    .line 348
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .locals 6

    .line 868
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 871
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    .line 875
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 878
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 879
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 885
    array-length v5, v4

    if-ne v5, v1, :cond_3

    .line 891
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/server/pm/parsing/PackageParser2;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v0, v4, v0

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ApexManager;->installPackage(Ljava/io/File;)Landroid/apex/ApexInfo;

    move-result-object v0

    .line 899
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexInfo(Landroid/apex/ApexInfo;)V

    .line 900
    iget-object v0, v0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 903
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    .line 891
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    .line 886
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected exactly one .apex file under "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " got: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x25

    .line 886
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1

    .line 881
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a directory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x24

    .line 881
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "APEX installation failed"

    .line 905
    invoke-virtual {v2, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 907
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 908
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 872
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final installApexPackagesTraced(Ljava/util/List;)V
    .locals 3

    const-wide/32 v0, 0x40000

    :try_start_0
    const-string v2, "installApexPackages"

    .line 860
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 861
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 864
    throw p0
.end method

.method public installStage()V
    .locals 5

    const-string v0, "installStage"

    .line 573
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 575
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 574
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v0, "queueInstall"

    .line 577
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 576
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "START INSTALL PACKAGE: observer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          stagedDir{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    sget-boolean v3, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          stagedCid{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "          pkg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          versionCode{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v1, :cond_3

    .line 588
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\n          Request from{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/InstallingSession;)V

    iget p0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 596
    invoke-static {p0}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal(I)J

    move-result-wide v2

    .line 593
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .locals 8

    .line 605
    new-instance v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 606
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;-><init>(Lcom/android/server/pm/InstallingSession;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    const-string v1, "installStageMultiPackage"

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 610
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide/32 v3, 0x40000

    .line 609
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v1, "queueInstall"

    .line 612
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 611
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "START INSTALL MULTI PACKAGE:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-static {v0}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->-$$Nest$fgetmChildInstallingSessions(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v4, "}\n"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallingSession;

    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          observer{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    const-string/jumbo v7, "null"

    if-eqz v6, :cond_0

    .line 618
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 617
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          stagedDir{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          versionCode{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v6, :cond_1

    .line 621
    invoke-virtual {v6}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "          Request from{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 625
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallingSession;

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "          pkg{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 628
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 632
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V

    iget p0, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 635
    invoke-static {p0}, Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;->getInstallDelayByThermal(I)J

    move-result-wide v2

    .line 632
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public movePackage()V
    .locals 4

    const-string/jumbo v0, "movePackage"

    .line 643
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 645
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 644
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v0, "queueInstall"

    .line 647
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 646
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 648
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final overrideInstallLocation(Ljava/lang/String;II)I
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 217
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    .line 219
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 222
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    .line 223
    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_0

    .line 225
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid stage location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    .line 229
    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result p0

    return p0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 233
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    .line 234
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 237
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 239
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result p1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    .line 237
    invoke-static {p3, p2, v1, p1, v0}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result p2

    .line 242
    :cond_5
    iget p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 p3, p1, 0x10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    move p3, v1

    goto :goto_2

    :cond_6
    move p3, v0

    :goto_2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v0

    :goto_3
    and-int/lit16 v3, p1, 0x800

    if-eqz v3, :cond_8

    move v0, v1

    :cond_8
    const/16 v3, -0x13

    const-string v4, "PackageManager"

    if-eqz p3, :cond_9

    if-eqz v2, :cond_9

    const-string p0, "Conflicting flags specified for installing on both internal and external"

    .line 251
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    const-string p0, "Conflicting flags specified for installing ephemeral on external"

    .line 254
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a
    if-nez p3, :cond_c

    if-nez v2, :cond_c

    const/4 p3, 0x2

    if-ne p2, p3, :cond_b

    or-int/lit8 p1, p1, 0x8

    and-int/lit8 p1, p1, -0x11

    .line 266
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_4

    :cond_b
    or-int/lit8 p1, p1, 0x10

    and-int/lit8 p1, p1, -0x9

    .line 271
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    :cond_c
    :goto_4
    return v1
.end method

.method public final processApkInstallRequests(ZLjava/util/List;)V
    .locals 3

    if-nez p1, :cond_1

    .line 714
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 715
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 716
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_0

    .line 721
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 723
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v1

    .line 722
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->installOnExternalAsec(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->doAsecPreInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_1

    .line 729
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesTraced(Ljava/util/List;)V

    .line 731
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 732
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->onInstallCompleted()V

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->doPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_2

    .line 736
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 737
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/InstallPackageHelper;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final processInstallRequests(ZLjava/util/List;)V
    .locals 6

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 679
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 680
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 687
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 689
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 692
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 696
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    const-string p0, "installApexPackages"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 703
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 704
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    :goto_2
    return-void

    .line 709
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public final processPendingInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 3

    .line 357
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApk(Lcom/android/server/pm/InstallRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 360
    :cond_0
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-ne v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 364
    :cond_1
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->tryProcessInstallRequest(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final setTraceCookie(I)V
    .locals 0

    .line 672
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    return-void
.end method

.method public final setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    return-object p0
.end method

.method public final start()V
    .locals 4

    const-string/jumbo v0, "queueInstall"

    .line 658
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 657
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v0, "startInstall"

    .line 659
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 660
    new-instance v0, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    .line 662
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    .line 663
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
