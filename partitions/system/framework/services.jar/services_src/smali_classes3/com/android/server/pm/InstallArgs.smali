.class public final Lcom/android/server/pm/InstallArgs;
.super Ljava/lang/Object;
.source "InstallArgs.java"


# instance fields
.field public final mAbiOverride:Ljava/lang/String;

.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public mCodeFile:Ljava/io/File;

.field public final mDataLoaderType:I

.field public final mForceQueryableOverride:Z

.field public final mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public mInstructionSets:[Ljava/lang/String;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageSource:I

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mTraceCookie:I

.field public final mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZ)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    move v1, p4

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallSource;

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    move v1, p12

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    move/from16 v1, p20

    iput v1, v0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    invoke-static {}, Lcom/android/server/pm/OriginInfo;->fromNothing()Lcom/android/server/pm/OriginInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v12, Landroid/util/ArrayMap;

    move-object v11, v12

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZ)V

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    return-void
.end method
