.class public final Lcom/google/android/gms/internal/measurement/u1;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/u1;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/u1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/u1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/u1;->zza:Lcom/google/android/gms/internal/measurement/u1;

    const-class v1, Lcom/google/android/gms/internal/measurement/u1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/u1;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/measurement/u1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/u1;->zza:Lcom/google/android/gms/internal/measurement/u1;

    return-object v0
.end method


# virtual methods
.method public final k(I)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/u1;->zza:Lcom/google/android/gms/internal/measurement/u1;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/i1;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/measurement/i1;-><init>(II)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/u1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/u1;-><init>()V

    return-object p0

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "zze"

    aput-object v2, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, p0

    const-string p0, "zzg"

    aput-object p0, p1, v1

    sget-object p0, Lcom/google/android/gms/internal/measurement/u1;->zza:Lcom/google/android/gms/internal/measurement/u1;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
