.class public Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;
.super Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;
.source "ServiceConfigAccessorImpl.java"


# instance fields
.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ServerFlags;)V
    .locals 1

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier-IA;)V

    .line 400
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/ServerFlags;Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    return-void
.end method


# virtual methods
.method public lookupPriorityStrings()[Ljava/lang/String;
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v0, "time_detector_origin_priorities_override"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/ServerFlags;->getOptionalStringArray(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
