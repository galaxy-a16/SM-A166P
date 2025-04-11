.class public interface abstract Landroid/os/IVold;
.super Ljava/lang/Object;
.source "IVold.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DDP_NG_ENOSPC:I = 0x2

.field public static final DDP_NG_TOOBIG:I = 0x1

.field public static final DDP_NG_UNKNOWN:I = -0x1

.field public static final DDP_OK:I = 0x0

.field public static final FSTRIM_FLAG_DEEP_TRIM:I = 0x1

.field public static final MOUNT_FLAG_PRIMARY:I = 0x1

.field public static final MOUNT_FLAG_VISIBLE_FOR_READ:I = 0x2

.field public static final MOUNT_FLAG_VISIBLE_FOR_WRITE:I = 0x4

.field public static final PARTITION_TYPE_MIXED:I = 0x2

.field public static final PARTITION_TYPE_PRIVATE:I = 0x1

.field public static final PARTITION_TYPE_PUBLIC:I = 0x0

.field public static final REMOUNT_MODE_ANDROID_WRITABLE:I = 0x4

.field public static final REMOUNT_MODE_DEFAULT:I = 0x1

.field public static final REMOUNT_MODE_INSTALLER:I = 0x2

.field public static final REMOUNT_MODE_NONE:I = 0x0

.field public static final REMOUNT_MODE_PASS_THROUGH:I = 0x3

.field public static final STORAGE_FLAG_CE:I = 0x2

.field public static final STORAGE_FLAG_DE:I = 0x1

.field public static final VOLUME_STATE_BAD_REMOVAL:I = 0x8

.field public static final VOLUME_STATE_CHECKING:I = 0x1

.field public static final VOLUME_STATE_EJECTING:I = 0x5

.field public static final VOLUME_STATE_FORMATTING:I = 0x4

.field public static final VOLUME_STATE_MOUNTED:I = 0x2

.field public static final VOLUME_STATE_MOUNTED_READ_ONLY:I = 0x3

.field public static final VOLUME_STATE_REMOVED:I = 0x7

.field public static final VOLUME_STATE_UNMOUNTABLE:I = 0x6

.field public static final VOLUME_STATE_UNMOUNTED:I = 0x0

.field public static final VOLUME_TYPE_ASEC:I = 0x3

.field public static final VOLUME_TYPE_EMULATED:I = 0x2

.field public static final VOLUME_TYPE_OBB:I = 0x4

.field public static final VOLUME_TYPE_PRIVATE:I = 0x1

.field public static final VOLUME_TYPE_PUBLIC:I = 0x0

.field public static final VOLUME_TYPE_STUB:I = 0x5


# virtual methods
.method public abstract abortChanges(Ljava/lang/String;Z)V
.end method

.method public abstract abortFuse()V
.end method

.method public abstract abortIdleMaint(Landroid/os/IVoldTaskListener;)V
.end method

.method public abstract addAppIds([Ljava/lang/String;[I)V
.end method

.method public abstract addSandboxIds([I[Ljava/lang/String;)V
.end method

.method public abstract asecCreate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract asecDestroy(Ljava/lang/String;Z)V
.end method

.method public abstract asecFinalize(Ljava/lang/String;)V
.end method

.method public abstract asecFixperms(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract asecFsPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract asecGetUsedSpace(Ljava/lang/String;)I
.end method

.method public abstract asecList()[Ljava/lang/String;
.end method

.method public abstract asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract asecPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract asecRename(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract asecResize(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract asecTrim(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract asecUnmount(Ljava/lang/String;Z)V
.end method

.method public abstract benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
.end method

.method public abstract bindMount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract commitChanges()V
.end method

.method public abstract cpFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V
.end method

.method public abstract createObb(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract createUserKey(IIZ)V
.end method

.method public abstract destroyDsuMetadataKey(Ljava/lang/String;)V
.end method

.method public abstract destroyObb(Ljava/lang/String;)V
.end method

.method public abstract destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract destroyStubVolume(Ljava/lang/String;)V
.end method

.method public abstract destroyUserKey(I)V
.end method

.method public abstract destroyUserStorage(Ljava/lang/String;II)V
.end method

.method public abstract earlyBootEnded()V
.end method

.method public abstract encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ensureAppDirsCreated([Ljava/lang/String;I)V
.end method

.method public abstract fbeEnable()V
.end method

.method public abstract fixupAppDir(Ljava/lang/String;I)V
.end method

.method public abstract forgetPartition(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract format(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fstrim(ILandroid/os/IVoldTaskListener;)V
.end method

.method public abstract getStorageLifeTime()I
.end method

.method public abstract getUnlockedUsers()[I
.end method

.method public abstract getUsedF2fsFileNode()J
.end method

.method public abstract getWriteAmount()I
.end method

.method public abstract incFsEnabled()Z
.end method

.method public abstract initUser0()V
.end method

.method public abstract isCheckpointing()Z
.end method

.method public abstract isSensitive(Ljava/lang/String;)Z
.end method

.method public abstract lockUserKey(I)V
.end method

.method public abstract markBootAttempt()V
.end method

.method public abstract monitor()V
.end method

.method public abstract mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V
.end method

.method public abstract mountAppFuse(II)Ljava/io/FileDescriptor;
.end method

.method public abstract mountFstab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;
.end method

.method public abstract mountSdpMediaStorageCmd(I)Z
.end method

.method public abstract moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
.end method

.method public abstract mvFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V
.end method

.method public abstract needsCheckpoint()Z
.end method

.method public abstract needsRollback()Z
.end method

.method public abstract onSecureKeyguardStateChanged(Z)V
.end method

.method public abstract onUserAdded(III)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onUserStarted(I)V
.end method

.method public abstract onUserStopped(I)V
.end method

.method public abstract openAppFuseFile(IIII)Ljava/io/FileDescriptor;
.end method

.method public abstract partition(Ljava/lang/String;II)V
.end method

.method public abstract prepareCheckpoint()V
.end method

.method public abstract prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method public abstract prepareUserStorage(Ljava/lang/String;III)V
.end method

.method public abstract refreshLatestWrite()V
.end method

.method public abstract remountAppStorageDirs(II[Ljava/lang/String;)V
.end method

.method public abstract remountUid(II)V
.end method

.method public abstract reserveDataBlocks(J)I
.end method

.method public abstract reset()V
.end method

.method public abstract resetCheckpoint()V
.end method

.method public abstract restoreCheckpoint(Ljava/lang/String;)V
.end method

.method public abstract restoreCheckpointPart(Ljava/lang/String;I)V
.end method

.method public abstract runIdleMaint(ZLandroid/os/IVoldTaskListener;)V
.end method

.method public abstract sdeEnable(Ljava/lang/String;IIZLandroid/os/IVoldTaskListener;Landroid/os/IVoldMountCallback;)V
.end method

.method public abstract sdeMoveMountHidden(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V
.end method

.method public abstract setDebugForExternal(Ljava/lang/String;)V
.end method

.method public abstract setDualDARPolicyCmd(II)Z
.end method

.method public abstract setGCUrgentPace(IIFFIII)V
.end method

.method public abstract setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V
.end method

.method public abstract setListener(Landroid/os/IVoldListener;)V
.end method

.method public abstract setMpUidForFileSystem(I)V
.end method

.method public abstract setSdpPolicyCmd(I)Z
.end method

.method public abstract setSdpPolicyToPathCmd(ILjava/lang/String;)Z
.end method

.method public abstract setSensitive(ILjava/lang/String;)Z
.end method

.method public abstract setStorageBindingSeed([B)V
.end method

.method public abstract setUserKeyProtection(ILjava/lang/String;)V
.end method

.method public abstract setupAppDir(Ljava/lang/String;I)V
.end method

.method public abstract shrinkDataDdp(J)Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract startCheckpoint(I)V
.end method

.method public abstract supportsBlockCheckpoint()Z
.end method

.method public abstract supportsCheckpoint()Z
.end method

.method public abstract supportsFileCheckpoint()Z
.end method

.method public abstract unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unmount(Ljava/lang/String;)V
.end method

.method public abstract unmountAppFuse(II)V
.end method

.method public abstract unmountAppStorageDirs(II[Ljava/lang/String;)V
.end method

.method public abstract unmountIncFs(Ljava/lang/String;)V
.end method
