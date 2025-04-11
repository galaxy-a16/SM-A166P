.class public interface abstract Landroid/gsi/IGsiService;
.super Ljava/lang/Object;
.source "IGsiService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract cancelGsiInstall()Z
.end method

.method public abstract closeInstall()I
.end method

.method public abstract closePartition()I
.end method

.method public abstract commitGsiChunkFromAshmem(J)Z
.end method

.method public abstract commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z
.end method

.method public abstract createPartition(Ljava/lang/String;JZ)I
.end method

.method public abstract disableGsi()Z
.end method

.method public abstract dumpDeviceMapperDevices()Ljava/lang/String;
.end method

.method public abstract enableGsi(ZLjava/lang/String;)I
.end method

.method public abstract enableGsiAsync(ZLjava/lang/String;Landroid/gsi/IGsiServiceCallback;)V
.end method

.method public abstract getActiveDsuSlot()Ljava/lang/String;
.end method

.method public abstract getAvbPublicKey(Landroid/gsi/AvbPublicKey;)I
.end method

.method public abstract getInstallProgress()Landroid/gsi/GsiProgress;
.end method

.method public abstract getInstalledDsuSlots()Ljava/util/List;
.end method

.method public abstract getInstalledGsiImageDir()Ljava/lang/String;
.end method

.method public abstract isGsiEnabled()Z
.end method

.method public abstract isGsiInstallInProgress()Z
.end method

.method public abstract isGsiInstalled()Z
.end method

.method public abstract isGsiRunning()Z
.end method

.method public abstract openImageService(Ljava/lang/String;)Landroid/gsi/IImageService;
.end method

.method public abstract openInstall(Ljava/lang/String;)I
.end method

.method public abstract removeGsi()Z
.end method

.method public abstract removeGsiAsync(Landroid/gsi/IGsiServiceCallback;)V
.end method

.method public abstract setGsiAshmem(Landroid/os/ParcelFileDescriptor;J)Z
.end method

.method public abstract suggestScratchSize()J
.end method

.method public abstract zeroPartition(Ljava/lang/String;)I
.end method
