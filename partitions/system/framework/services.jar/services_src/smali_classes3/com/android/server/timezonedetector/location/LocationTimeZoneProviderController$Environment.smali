.class public abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderController.java"


# instance fields
.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .locals 0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 874
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->mSharedLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract elapsedRealtimeMillis()J
.end method

.method public abstract getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
.end method

.method public abstract getProviderEventFilteringAgeThreshold()Ljava/time/Duration;
.end method

.method public abstract getProviderInitializationTimeout()Ljava/time/Duration;
.end method

.method public abstract getProviderInitializationTimeoutFuzz()Ljava/time/Duration;
.end method

.method public abstract getUncertaintyDelay()Ljava/time/Duration;
.end method
