.class public interface abstract Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# virtual methods
.method public abstract cancelCpuSyncDueToWakelockChange()V
.end method

.method public abstract scheduleCleanupDueToRemovedUser(I)Ljava/util/concurrent/Future;
.end method

.method public abstract scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
.end method

.method public abstract scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
.end method

.method public abstract scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
.end method

.method public abstract scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
.end method

.method public abstract scheduleSyncDueToProcessStateChange(IJ)V
.end method

.method public abstract scheduleSyncDueToScreenStateChange(IZZI[I)Ljava/util/concurrent/Future;
.end method
