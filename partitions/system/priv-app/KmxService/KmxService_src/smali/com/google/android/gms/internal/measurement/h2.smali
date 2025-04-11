.class public final Lcom/google/android/gms/internal/measurement/h2;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/h2;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:F

.field private zzj:D

.field private zzk:Lcom/google/android/gms/internal/measurement/q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/h2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/h2;->zza:Lcom/google/android/gms/internal/measurement/h2;

    const-class v1, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static synthetic A(Lcom/google/android/gms/internal/measurement/h2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzj:D

    return-void
.end method

.method public static B(Lcom/google/android/gms/internal/measurement/h2;Lcom/google/android/gms/internal/measurement/h2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static C(Lcom/google/android/gms/internal/measurement/h2;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/t3;->a(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/q4;)V

    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/measurement/h2;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static p()Lcom/google/android/gms/internal/measurement/g2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/h2;->zza:Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->h()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/g2;

    return-object v0
.end method

.method public static synthetic q()Lcom/google/android/gms/internal/measurement/h2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/h2;->zza:Lcom/google/android/gms/internal/measurement/h2;

    return-object v0
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/measurement/h2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h2;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/measurement/h2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h2;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/measurement/h2;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/h2;->zza:Lcom/google/android/gms/internal/measurement/h2;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h2;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic x(Lcom/google/android/gms/internal/measurement/h2;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/h2;->zzh:J

    return-void
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/measurement/h2;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzh:J

    return-void
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/measurement/h2;D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/h2;->zzj:D

    return-void
.end method


# virtual methods
.method public final E()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final F()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final H()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zze:I

    and-int/lit8 p0, p0, 0x2

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/h2;->zza:Lcom/google/android/gms/internal/measurement/h2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/g2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/g2;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/h2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/h2;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0x8

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

    const/4 p0, 0x7

    const-class v0, Lcom/google/android/gms/internal/measurement/h2;

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/h2;->zza:Lcom/google/android/gms/internal/measurement/h2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzj:D

    return-wide v0
.end method

.method public final m()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzi:F

    return p0
.end method

.method public final n()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzh:J

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final t()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/h2;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method
