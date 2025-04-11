.class public interface abstract Landroid/os/IInstalld;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES:I = 0x20000

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x10

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x20

.field public static final FLAG_FORCE:I = 0x2000

.field public static final FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES:I = 0x800

.field public static final FLAG_FREE_CACHE_NOOP:I = 0x400

.field public static final FLAG_FREE_CACHE_V2:I = 0x100

.field public static final FLAG_FREE_CACHE_V2_DEFY_QUOTA:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final FLAG_STORAGE_SDK:I = 0x8

.field public static final FLAG_USE_QUOTA:I = 0x1000


# virtual methods
.method public abstract cleanupInvalidPackageDirs(Ljava/lang/String;II)V
.end method

.method public abstract clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
.end method

.method public abstract clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract compressFile(Ljava/lang/String;Z)V
.end method

.method public abstract controlDexOptBlocking(Z)V
.end method

.method public abstract copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z
.end method

.method public abstract copyKnoxCancel(Ljava/lang/String;J)Z
.end method

.method public abstract copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I
.end method

.method public abstract copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;
.end method

.method public abstract createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;
.end method

.method public abstract createEncAppData(Ljava/lang/String;III)Z
.end method

.method public abstract createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createUserData(Ljava/lang/String;III)V
.end method

.method public abstract deleteKnoxFile(Ljava/lang/String;)Z
.end method

.method public abstract deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
.end method

.method public abstract destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
.end method

.method public abstract destroyAppProfiles(Ljava/lang/String;)V
.end method

.method public abstract destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V
.end method

.method public abstract destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract destroyUserData(Ljava/lang/String;II)V
.end method

.method public abstract dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract fixupAppData(Ljava/lang/String;I)V
.end method

.method public abstract freeCache(Ljava/lang/String;JI)V
.end method

.method public abstract getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
.end method

.method public abstract getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J
.end method

.method public abstract getCompressedStats(Ljava/lang/String;[J)Z
.end method

.method public abstract getDualDARLockstate()Z
.end method

.method public abstract getExternalSize(Ljava/lang/String;II[I)[J
.end method

.method public abstract getKnoxFileInfo(Ljava/lang/String;)[J
.end method

.method public abstract getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z
.end method

.method public abstract getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;
.end method

.method public abstract getUserSize(Ljava/lang/String;II[I)[J
.end method

.method public abstract hasDualDARPolicy(Ljava/lang/String;)Z
.end method

.method public abstract hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z
.end method

.method public abstract hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
.end method

.method public abstract invalidateMounts()V
.end method

.method public abstract isQuotaSupported(Ljava/lang/String;)Z
.end method

.method public abstract linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract migrateLegacyObbData()V
.end method

.method public abstract migrateSdpDb(Ljava/lang/String;I)Z
.end method

.method public abstract moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onPrivateVolumeRemoved(Ljava/lang/String;)V
.end method

.method public abstract prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V
.end method

.method public abstract reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract removeEncPkgDir(ILjava/lang/String;)Z
.end method

.method public abstract removeEncUserDir(I)Z
.end method

.method public abstract removeNotTargetedPreloadApksIfNeeded()Z
.end method

.method public abstract restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
.end method

.method public abstract restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rmdex(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract scanApkStats(Ljava/lang/String;I)V
.end method

.method public abstract setAppQuota(Ljava/lang/String;IIJ)V
.end method

.method public abstract setDualDARPolicyDir(IILjava/lang/String;)Z
.end method

.method public abstract setDualDARPolicyDirRecursively(IILjava/lang/String;)Z
.end method

.method public abstract setEviction(IZ)Z
.end method

.method public abstract setFirstBoot()V
.end method

.method public abstract snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method public abstract tryMountDataMirror(Ljava/lang/String;)V
.end method
