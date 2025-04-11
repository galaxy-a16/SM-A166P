.class public final Lcom/google/android/gms/internal/measurement/v2;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/v2;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:F

.field private zzk:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/v2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/v2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/v2;->zza:Lcom/google/android/gms/internal/measurement/v2;

    const-class v1, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/measurement/u2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/v2;->zza:Lcom/google/android/gms/internal/measurement/v2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->h()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/u2;

    return-object v0
.end method

.method public static synthetic p()Lcom/google/android/gms/internal/measurement/v2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/v2;->zza:Lcom/google/android/gms/internal/measurement/v2;

    return-object v0
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/measurement/v2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/v2;->zzf:J

    return-void
.end method

.method public static synthetic t(Lcom/google/android/gms/internal/measurement/v2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v2;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/measurement/v2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v2;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/measurement/v2;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/v2;->zza:Lcom/google/android/gms/internal/measurement/v2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/v2;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/measurement/v2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/v2;->zzi:J

    return-void
.end method

.method public static synthetic x(Lcom/google/android/gms/internal/measurement/v2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzi:J

    return-void
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/measurement/v2;D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/v2;->zzk:D

    return-void
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/measurement/v2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzk:D

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final D()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/v2;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/v2;->zza:Lcom/google/android/gms/internal/measurement/v2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/u2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u2;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/v2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/v2;-><init>()V

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

    sget-object p0, Lcom/google/android/gms/internal/measurement/v2;->zza:Lcom/google/android/gms/internal/measurement/v2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzk:D

    return-wide v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzi:J

    return-wide v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzf:J

    return-wide v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/v2;->zzh:Ljava/lang/String;

    return-object p0
.end method
