.class public final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# instance fields
.field public mApexInfo:Landroid/apex/ApexInfo;

.field public mApexModuleName:Ljava/lang/String;

.field public mAppId:I

.field public mClearCodeCache:Z

.field public mDexoptStatus:I

.field public mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public mExistingPackage:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field public mInternalErrorCode:I

.field public mIsInstallForUsers:Z

.field public mIsInstallInherit:Z

.field public mLibraryConsumers:Ljava/util/ArrayList;

.field public mName:Ljava/lang/String;

.field public mNeedToMove:Z

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field public final mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

.field public mParseFlags:I

.field public mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

.field public mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPostInstallRunnable:Ljava/lang/Runnable;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReplace:Z

.field public final mRequireUserAction:I

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mScanFlags:I

.field public mScanResult:Lcom/android/server/pm/ScanResult;

.field public final mSessionId:I

.field public mSystem:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(IILcom/android/server/pm/pkg/AndroidPackage;[ILjava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    iput-object p3, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    new-instance v2, Lcom/android/server/pm/InstallArgs;

    move-object v3, v2

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget-object v8, v1, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v14, v1, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v15, v1, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    iget-object v11, v1, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    move-object/from16 v16, v11

    iget v11, v1, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    move/from16 v17, v11

    iget-object v11, v1, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v18, v11

    iget v11, v1, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    move/from16 v19, v11

    iget v11, v1, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move/from16 v20, v11

    iget-boolean v11, v1, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    move/from16 v21, v11

    iget v11, v1, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    move/from16 v22, v11

    iget v11, v1, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move/from16 v23, v11

    iget-boolean v11, v1, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move/from16 v24, v11

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v24}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZ)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iget v1, v1, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput v1, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_0
    const/4 p4, 0x0

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return-void
.end method


# virtual methods
.method public assertScanResultExists()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    if-nez p0, :cond_1

    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p0, :cond_0

    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    if-nez p0, :cond_0

    const-string p0, "PackageManager"

    const-string v0, "ScanResult is null and it should not happen"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ScanResult cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public closeFreezer()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_0
    return-void
.end method

.method public getAbiOverride()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getAllowlistedRestrictedPermissions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public getApexInfo()Landroid/apex/ApexInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-object p0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return p0
.end method

.method public getAutoRevokePermissionsMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    :goto_0
    return p0
.end method

.method public getChangedAbiCodePath()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mChangedAbiCodePath:Ljava/util/List;

    return-object p0
.end method

.method public getCodeFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    :goto_0
    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getDataLoaderType()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    :goto_0
    return p0
.end method

.method public getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getDynamicSharedLibraryInfos()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    return-object p0
.end method

.method public getExistingPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getExistingPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallFlags()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    :goto_0
    return p0
.end method

.method public getInstallReason()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_0
    return p0
.end method

.method public getInstallScenario()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    :goto_0
    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    :goto_0
    return-object p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getInstallerPackageUid()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getInternalErrorCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    return p0
.end method

.method public getLibraryConsumers()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMoveFromCodePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMovePackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMoveToUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNeedToMove()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    return p0
.end method

.method public getNewUsers()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    return-object p0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    :goto_0
    return-object p0
.end method

.method public getOldCodeFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOldInstructionSet()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOrigPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginInfo()Lcom/android/server/pm/OriginInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    :goto_0
    return-object p0
.end method

.method public getOriginUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getOriginUsers()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-object p0
.end method

.method public getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getPackageSource()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    :goto_0
    return p0
.end method

.method public getParseFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    return p0
.end method

.method public getParsedPackage()Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public getPermissionStates()Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    :goto_0
    return-object p0
.end method

.method public getPkg()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPreviousAppId()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget p0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    return p0
.end method

.method public getRealPackageName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRealPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isExistingSettingCopied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-object p0
.end method

.method public getRequireUserAction()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return p0
.end method

.method public getReturnCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return p0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getScanFlags()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    return p0
.end method

.method public getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getSessionId()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    return p0
.end method

.method public getSignatureSchemeVersion()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    :goto_0
    return-object p0
.end method

.method public getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getTraceCookie()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    :goto_0
    return p0
.end method

.method public getTraceMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    return p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public isApplicationEnabledSettingPersistent()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    :goto_0
    return p0
.end method

.method public isClearCodeCache()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    return p0
.end method

.method public isExistingSettingCopied()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean p0, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    return p0
.end method

.method public isForceQueryableOverride()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstallExistingForUser()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstallForUsers()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    return p0
.end method

.method public isInstallFromAdb()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstallInherit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    return p0
.end method

.method public isInstallMove()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstallReplace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    return p0
.end method

.method public isInstallSystem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    return p0
.end method

.method public isInstantInstall()Z
    .locals 0

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRollback()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdate()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needsNewAppId()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget p0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCommitFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onCommitStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mDexoptStatus:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(IJ)V

    return-void
.end method

.method public onInstallCompleted()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallSucceed()V

    :cond_0
    return-void
.end method

.method public onPrepareFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onPrepareStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onReconcileFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onReconcileStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onScanFinished()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onScanStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public runPostInstallRunnable()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setApexInfo(Landroid/apex/ApexInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-void
.end method

.method public setAppId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return-void
.end method

.method public setCodeFile(Ljava/io/File;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    const-string p1, "PackageManager"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    :cond_0
    return-void
.end method

.method public setError(Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    const-string v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    :cond_0
    return-void
.end method

.method public setFreezer(Lcom/android/server/pm/PackageFreezer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    return-void
.end method

.method public setLibraryConsumers(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNeedToMove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mNeedToMove:Z

    return-void
.end method

.method public setNewUsers([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    return-void
.end method

.method public setOriginPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-void
.end method

.method public setOriginPermission(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-void
.end method

.method public setOriginUsers([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-void
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-void
.end method

.method public setPrepareResult(ZIILcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackage:Lcom/android/server/pm/pkg/AndroidPackage;

    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    iput-boolean p6, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    iput-object p8, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    iput-object p9, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setRemovedAppId(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedAppId:I

    :cond_0
    return-void
.end method

.method public setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return-void
.end method

.method public setReturnMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-void
.end method

.method public setScanResult(Lcom/android/server/pm/ScanResult;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    return-void
.end method

.method public setScannedPackageSettingAppId(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setScannedPackageSettingFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setScannedPackageSettingLastUpdateTime(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    return-void
.end method
