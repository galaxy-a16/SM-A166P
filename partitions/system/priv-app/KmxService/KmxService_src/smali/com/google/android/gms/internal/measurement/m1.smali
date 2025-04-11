.class public final Lcom/google/android/gms/internal/measurement/m1;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/m1;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/measurement/h1;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/m1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/m1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/m1;->zza:Lcom/google/android/gms/internal/measurement/m1;

    const-class v1, Lcom/google/android/gms/internal/measurement/m1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/measurement/l1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/m1;->zza:Lcom/google/android/gms/internal/measurement/m1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->h()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l1;

    return-object v0
.end method

.method public static synthetic o()Lcom/google/android/gms/internal/measurement/m1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/m1;->zza:Lcom/google/android/gms/internal/measurement/m1;

    return-object v0
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/measurement/m1;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/m1;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/m1;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m1;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final k(I)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/m1;->zza:Lcom/google/android/gms/internal/measurement/m1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/l1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l1;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/m1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/m1;-><init>()V

    return-object p0

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zze"

    aput-object v5, p1, v4

    const-string v4, "zzf"

    aput-object v4, p1, p0

    const-string p0, "zzg"

    aput-object p0, p1, v3

    const-string p0, "zzh"

    aput-object p0, p1, v2

    const-string p0, "zzi"

    aput-object p0, p1, v1

    const-string p0, "zzj"

    aput-object p0, p1, v0

    const/4 p0, 0x6

    const-string v0, "zzk"

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/m1;->zza:Lcom/google/android/gms/internal/measurement/m1;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzf:I

    return p0
.end method

.method public final m()Lcom/google/android/gms/internal/measurement/h1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzh:Lcom/google/android/gms/internal/measurement/h1;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h1;->m()Lcom/google/android/gms/internal/measurement/h1;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final r()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzi:Z

    return p0
.end method

.method public final s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzj:Z

    return p0
.end method

.method public final t()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zzk:Z

    return p0
.end method

.method public final u()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/m1;->zze:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
