.class public final Lcom/google/android/gms/internal/measurement/a3;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/a3;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/q4;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/a3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/a3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/a3;->zza:Lcom/google/android/gms/internal/measurement/a3;

    const-class v1, Lcom/google/android/gms/internal/measurement/a3;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic m()Lcom/google/android/gms/internal/measurement/a3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a3;->zza:Lcom/google/android/gms/internal/measurement/a3;

    return-object v0
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

    const/4 p0, 0x0

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/a3;->zza:Lcom/google/android/gms/internal/measurement/a3;

    return-object p0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/i1;

    const/16 v0, 0xa

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/i1;-><init>(ILandroidx/activity/b;)V

    return-object p1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/a3;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/a3;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zze"

    aput-object v5, p1, v4

    const-string v4, "zzf"

    aput-object v4, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/z2;->a:Lcom/google/android/gms/internal/measurement/z2;

    aput-object p0, p1, v3

    const-string p0, "zzg"

    aput-object p0, p1, v2

    const-class p0, Lcom/google/android/gms/internal/measurement/a3;

    aput-object p0, p1, v1

    const-string p0, "zzh"

    aput-object p0, p1, v0

    const/4 p0, 0x6

    const-string v0, "zzi"

    aput-object v0, p1, p0

    const/4 p0, 0x7

    const-string v0, "zzj"

    aput-object v0, p1, p0

    const/16 p0, 0x8

    const-string v0, "zzk"

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/a3;->zza:Lcom/google/android/gms/internal/measurement/a3;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzk:D

    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final p()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final q()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzj:Z

    return p0
.end method

.method public final r()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zze:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zze:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zze:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()I
    .locals 3

    iget p0, p0, Lcom/google/android/gms/internal/measurement/a3;->zzf:I

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v2, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0
.end method
