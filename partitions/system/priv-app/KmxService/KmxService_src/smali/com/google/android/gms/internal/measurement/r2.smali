.class public final Lcom/google/android/gms/internal/measurement/r2;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/r2;


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/p4;

.field private zzf:Lcom/google/android/gms/internal/measurement/p4;

.field private zzg:Lcom/google/android/gms/internal/measurement/q4;

.field private zzh:Lcom/google/android/gms/internal/measurement/q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/r2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/r2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/r2;->zza:Lcom/google/android/gms/internal/measurement/r2;

    const-class v1, Lcom/google/android/gms/internal/measurement/r2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static A(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->c(Lcom/google/android/gms/internal/measurement/p4;)Lcom/google/android/gms/internal/measurement/y4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/t3;->a(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/q4;)V

    return-void
.end method

.method public static B(Lcom/google/android/gms/internal/measurement/r2;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    return-void
.end method

.method public static synthetic C(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->I()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/t3;->a(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/q4;)V

    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/measurement/r2;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static synthetic E(Lcom/google/android/gms/internal/measurement/r2;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->I()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static F(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/t3;->a(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/q4;)V

    return-void
.end method

.method public static G(Lcom/google/android/gms/internal/measurement/r2;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static H(Lcom/google/android/gms/internal/measurement/r2;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static q()Lcom/google/android/gms/internal/measurement/q2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/r2;->zza:Lcom/google/android/gms/internal/measurement/r2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/l4;->h()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/q2;

    return-object v0
.end method

.method public static synthetic r()Lcom/google/android/gms/internal/measurement/r2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/r2;->zza:Lcom/google/android/gms/internal/measurement/r2;

    return-object v0
.end method

.method public static s()Lcom/google/android/gms/internal/measurement/r2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/r2;->zza:Lcom/google/android/gms/internal/measurement/r2;

    return-object v0
.end method

.method public static y(Lcom/google/android/gms/internal/measurement/r2;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->c(Lcom/google/android/gms/internal/measurement/p4;)Lcom/google/android/gms/internal/measurement/y4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/t3;->a(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/q4;)V

    return-void
.end method

.method public static z(Lcom/google/android/gms/internal/measurement/r2;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/y4;->d:Lcom/google/android/gms/internal/measurement/y4;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/l4;->d(Lcom/google/android/gms/internal/measurement/q4;)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    :cond_0
    return-void
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
    sget-object p0, Lcom/google/android/gms/internal/measurement/r2;->zza:Lcom/google/android/gms/internal/measurement/r2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/q2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q2;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/r2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/r2;-><init>()V

    return-object p0

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zze"

    aput-object v5, p1, v4

    const-string v4, "zzf"

    aput-object v4, p1, p0

    const-string p0, "zzg"

    aput-object p0, p1, v3

    const-class p0, Lcom/google/android/gms/internal/measurement/b2;

    aput-object p0, p1, v2

    const-string p0, "zzh"

    aput-object p0, p1, v1

    const-class p0, Lcom/google/android/gms/internal/measurement/t2;

    aput-object p0, p1, v0

    sget-object p0, Lcom/google/android/gms/internal/measurement/r2;->zza:Lcom/google/android/gms/internal/measurement/r2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/y4;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:I

    return p0
.end method

.method public final n()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final o()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/y4;

    iget p0, p0, Lcom/google/android/gms/internal/measurement/y4;->c:I

    return p0
.end method

.method public final p(I)Lcom/google/android/gms/internal/measurement/b2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/b2;

    return-object p0
.end method

.method public final t(I)Lcom/google/android/gms/internal/measurement/t2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t2;

    return-object p0
.end method

.method public final u()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final v()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzf:Lcom/google/android/gms/internal/measurement/p4;

    return-object p0
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zzh:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method

.method public final x()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/r2;->zze:Lcom/google/android/gms/internal/measurement/p4;

    return-object p0
.end method
