.class public abstract Lcom/android/server/backup/BackupAndRestoreFeatureFlags;
.super Ljava/lang/Object;
.source "BackupAndRestoreFeatureFlags.java"


# direct methods
.method public static getBackupTransportCallbackTimeoutMillis()J
    .locals 4

    const-string v0, "backup_transport_callback_timeout_millis"

    const-wide/32 v1, 0x493e0

    const-string v3, "backup_and_restore"

    .line 50
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBackupTransportFutureTimeoutMillis()J
    .locals 4

    const-string v0, "backup_transport_future_timeout_millis"

    const-wide/32 v1, 0x927c0

    const-string v3, "backup_and_restore"

    .line 41
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFullBackupUtilsRouteBufferSizeBytes()I
    .locals 3

    const-string v0, "full_backup_utils_route_buffer_size_bytes"

    const v1, 0x8000

    const-string v2, "backup_and_restore"

    .line 75
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getFullBackupWriteToTransportBufferSizeBytes()I
    .locals 3

    const-string v0, "full_backup_write_to_transport_buffer_size_bytes"

    const/16 v1, 0x2000

    const-string v2, "backup_and_restore"

    .line 62
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUnifiedRestoreContinueAfterTransportFailureInKvRestore()Z
    .locals 3

    const-string/jumbo v0, "unified_restore_continue_after_transport_failure_in_kv_restore"

    const/4 v1, 0x1

    const-string v2, "backup_and_restore"

    .line 89
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
