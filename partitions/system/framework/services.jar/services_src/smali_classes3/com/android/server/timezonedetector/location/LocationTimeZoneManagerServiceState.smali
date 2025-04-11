.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
.super Ljava/lang/Object;
.source "LocationTimeZoneManagerServiceState.java"


# instance fields
.field public final mControllerState:Ljava/lang/String;

.field public final mControllerStates:Ljava/util/List;

.field public final mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

.field public final mPrimaryProviderStates:Ljava/util/List;

.field public final mSecondaryProviderStates:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->-$$Nest$fgetmControllerState(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerState:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->-$$Nest$fgetmLastEvent(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 43
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->-$$Nest$fgetmControllerStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerStates:Ljava/util/List;

    .line 44
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->-$$Nest$fgetmPrimaryProviderStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mPrimaryProviderStates:Ljava/util/List;

    .line 45
    invoke-static {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->-$$Nest$fgetmSecondaryProviderStates(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mSecondaryProviderStates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getControllerStates()Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerStates:Ljava/util/List;

    return-object p0
.end method

.method public getLastEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    return-object p0
.end method

.method public getPrimaryProviderStates()Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mPrimaryProviderStates:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryProviderStates()Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mSecondaryProviderStates:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationTimeZoneManagerServiceState{mControllerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mControllerStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerStates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrimaryProviderStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mPrimaryProviderStates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSecondaryProviderStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mSecondaryProviderStates:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
