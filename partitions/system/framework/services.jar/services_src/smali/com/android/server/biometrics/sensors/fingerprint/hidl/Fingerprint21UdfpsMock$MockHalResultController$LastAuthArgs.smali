.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;
.super Ljava/lang/Object;
.source "Fingerprint21UdfpsMock.java"


# instance fields
.field public final deviceId:J

.field public final fingerId:I

.field public final groupId:I

.field public final lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

.field public final token:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationConsumer;JIILjava/util/ArrayList;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->lastAuthenticatedClient:Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 172
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->deviceId:J

    .line 173
    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->fingerId:I

    .line 174
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->groupId:I

    if-nez p6, :cond_0

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->token:Ljava/util/ArrayList;

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController$LastAuthArgs;->token:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method
