.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$Injector;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    return-object p0
.end method

.method public readSysFs(Ljava/lang/String;)[B
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public writeSysFs(Ljava/lang/String;[B)V
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    return-void
.end method
