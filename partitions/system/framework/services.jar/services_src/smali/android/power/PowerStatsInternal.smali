.class public abstract Landroid/power/PowerStatsInternal;
.super Ljava/lang/Object;
.source "PowerStatsInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;
.end method

.method public abstract getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
.end method

.method public abstract getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
.end method

.method public abstract getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
.end method

.method public abstract getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;
.end method

.method public abstract readEnergyMeterAsync([I)Ljava/util/concurrent/CompletableFuture;
.end method
