.class public final Lcom/google/android/gms/measurement/internal/u2;
.super Lc3/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/measurement/internal/b5;Lcom/google/android/gms/measurement/internal/b5;)V
    .locals 9

    const/16 v5, 0x5d

    const/4 v8, 0x0

    invoke-static {p1}, Lc3/j0;->a(Landroid/content/Context;)Lc3/j0;

    move-result-object v3

    sget-object v4, La3/f;->b:La3/f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lc3/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc3/j0;La3/f;ILc3/b;Lc3/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    const p0, 0xbdfcb8

    return p0
.end method

.method public final synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/measurement/internal/q2;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/measurement/internal/q2;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/measurement/internal/p2;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/p2;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms.measurement.START"

    return-object p0
.end method
