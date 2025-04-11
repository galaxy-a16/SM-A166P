.class public final Lcom/google/android/gms/internal/measurement/d1;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/d1;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/q4;

.field private zzh:Lcom/google/android/gms/internal/measurement/q4;

.field private zzi:Z

.field private zzj:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/d1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/d1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/d1;->zza:Lcom/google/android/gms/internal/measurement/d1;

    const-class v1, Lcom/google/android/gms/internal/measurement/d1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static synthetic o()Lcom/google/android/gms/internal/measurement/d1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/d1;->zza:Lcom/google/android/gms/internal/measurement/d1;

    return-object v0
.end method

.method public static t(Lcom/google/android/gms/internal/measurement/d1;ILcom/google/android/gms/internal/measurement/m1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static u(Lcom/google/android/gms/internal/measurement/d1;ILcom/google/android/gms/internal/measurement/f1;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/d1;->zza:Lcom/google/android/gms/internal/measurement/d1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/c1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/c1;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/d1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/d1;-><init>()V

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

    const-class p0, Lcom/google/android/gms/internal/measurement/m1;

    aput-object p0, p1, v2

    const-string p0, "zzh"

    aput-object p0, p1, v1

    const-class p0, Lcom/google/android/gms/internal/measurement/f1;

    aput-object p0, p1, v0

    const/4 p0, 0x6

    const-string v0, "zzi"

    aput-object v0, p1, p0

    const/4 p0, 0x7

    const-string v0, "zzj"

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/d1;->zza:Lcom/google/android/gms/internal/measurement/d1;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzf:I

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final n()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/measurement/f1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/f1;

    return-object p0
.end method

.method public final q(I)Lcom/google/android/gms/internal/measurement/m1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/m1;

    return-object p0
.end method

.method public final r()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final s()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final v()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/measurement/d1;->zze:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
