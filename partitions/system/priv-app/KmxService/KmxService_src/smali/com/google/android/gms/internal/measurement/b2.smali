.class public final Lcom/google/android/gms/internal/measurement/b2;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/b2;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b2;->zza:Lcom/google/android/gms/internal/measurement/b2;

    const-class v1, Lcom/google/android/gms/internal/measurement/b2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/measurement/a2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zza:Lcom/google/android/gms/internal/measurement/b2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->h()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    return-object v0
.end method

.method public static synthetic o()Lcom/google/android/gms/internal/measurement/b2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b2;->zza:Lcom/google/android/gms/internal/measurement/b2;

    return-object v0
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/measurement/b2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/measurement/b2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/b2;->zzg:J

    return-void
.end method


# virtual methods
.method public final k(I)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/b2;->zza:Lcom/google/android/gms/internal/measurement/b2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/a2;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/b2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/b2;-><init>()V

    return-object p0

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "zze"

    aput-object v2, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, p0

    const-string p0, "zzg"

    aput-object p0, p1, v1

    sget-object p0, Lcom/google/android/gms/internal/measurement/b2;->zza:Lcom/google/android/gms/internal/measurement/b2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzf:I

    return p0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/b2;->zzg:J

    return-wide v0
.end method

.method public final r()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/b2;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
