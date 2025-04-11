.class public final Lcom/google/android/gms/internal/measurement/t1;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/t1;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/measurement/q4;

.field private zzj:Lcom/google/android/gms/internal/measurement/q4;

.field private zzk:Lcom/google/android/gms/internal/measurement/q4;

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/measurement/q4;

.field private zzo:Lcom/google/android/gms/internal/measurement/q4;

.field private zzp:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/t1;->zza:Lcom/google/android/gms/internal/measurement/t1;

    const-class v1, Lcom/google/android/gms/internal/measurement/t1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzg:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t1;->zzi:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t1;->zzj:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t1;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t1;->zzn:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/t1;->zzo:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static p()Lcom/google/android/gms/internal/measurement/s1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/t1;->zza:Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->h()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    return-object v0
.end method

.method public static synthetic q()Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/t1;->zza:Lcom/google/android/gms/internal/measurement/t1;

    return-object v0
.end method

.method public static r()Lcom/google/android/gms/internal/measurement/t1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/t1;->zza:Lcom/google/android/gms/internal/measurement/t1;

    return-object v0
.end method

.method public static y(Lcom/google/android/gms/internal/measurement/t1;ILcom/google/android/gms/internal/measurement/r1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzj:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzj:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzj:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static z(Lcom/google/android/gms/internal/measurement/t1;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzm:Z

    return p0
.end method

.method public final B()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zze:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/t1;->zza:Lcom/google/android/gms/internal/measurement/t1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/s1;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/t1;-><init>()V

    return-object p0

    :cond_3
    const/16 p1, 0x11

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

    const-class p0, Lcom/google/android/gms/internal/measurement/v1;

    aput-object p0, p1, v0

    const/4 p0, 0x6

    const-string v0, "zzj"

    aput-object v0, p1, p0

    const/4 p0, 0x7

    const-class v0, Lcom/google/android/gms/internal/measurement/r1;

    aput-object v0, p1, p0

    const/16 p0, 0x8

    const-string v0, "zzk"

    aput-object v0, p1, p0

    const/16 p0, 0x9

    const-class v0, Lcom/google/android/gms/internal/measurement/d1;

    aput-object v0, p1, p0

    const/16 p0, 0xa

    const-string v0, "zzl"

    aput-object v0, p1, p0

    const/16 p0, 0xb

    const-string v0, "zzm"

    aput-object v0, p1, p0

    const/16 p0, 0xc

    const-string v0, "zzn"

    aput-object v0, p1, p0

    const/16 p0, 0xd

    const-class v0, Lcom/google/android/gms/internal/measurement/y2;

    aput-object v0, p1, p0

    const/16 p0, 0xe

    const-string v0, "zzo"

    aput-object v0, p1, p0

    const/16 p0, 0xf

    const-class v0, Lcom/google/android/gms/internal/measurement/p1;

    aput-object v0, p1, p0

    const/16 p0, 0x10

    const-string v0, "zzp"

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/t1;->zza:Lcom/google/android/gms/internal/measurement/t1;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzn:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzj:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzf:J

    return-wide v0
.end method

.method public final o(I)Lcom/google/android/gms/internal/measurement/r1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzj:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/r1;

    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzp:Ljava/lang/String;

    return-object p0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzk:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzo:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzn:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final x()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/t1;->zzi:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method
