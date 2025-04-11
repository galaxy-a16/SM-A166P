.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$InstanceHolder;
.super Ljava/lang/Object;
.source "SemUdfpsTspManager.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    return-void
.end method
