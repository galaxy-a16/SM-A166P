.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;)V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    return-void
.end method
