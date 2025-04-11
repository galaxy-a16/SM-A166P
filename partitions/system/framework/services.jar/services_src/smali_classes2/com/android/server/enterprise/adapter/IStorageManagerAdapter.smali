.class public interface abstract Lcom/android/server/enterprise/adapter/IStorageManagerAdapter;
.super Ljava/lang/Object;
.source "IStorageManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IAdapterHandle;


# virtual methods
.method public abstract getExternalSdCardPath()Ljava/lang/String;
.end method

.method public abstract getExternalSdCardState()Ljava/lang/String;
.end method

.method public abstract getInternalSdCardPath()Ljava/lang/String;
.end method

.method public abstract getVolumeList()[Landroid/os/storage/StorageVolume;
.end method

.method public abstract getVolumes()Ljava/util/List;
.end method
