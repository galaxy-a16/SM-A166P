.class public final Lcom/google/android/gms/internal/measurement/p2;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/p2;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/p2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/p2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/p2;->zza:Lcom/google/android/gms/internal/measurement/p2;

    const-class v1, Lcom/google/android/gms/internal/measurement/p2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/p2;->zzf:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p2;->zzg:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/measurement/p2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/p2;->zza:Lcom/google/android/gms/internal/measurement/p2;

    return-object v0
.end method


# virtual methods
.method public final k(I)Ljava/lang/Object;
    .locals 5

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
    sget-object p0, Lcom/google/android/gms/internal/measurement/p2;->zza:Lcom/google/android/gms/internal/measurement/p2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/n2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/n2;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/p2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/p2;-><init>()V

    return-object p0

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/o2;->a:Lcom/google/android/gms/internal/measurement/o2;

    aput-object p0, p1, v3

    const-string p0, "zzg"

    aput-object p0, p1, v2

    const-class p0, Lcom/google/android/gms/internal/measurement/f2;

    aput-object p0, p1, v1

    sget-object p0, Lcom/google/android/gms/internal/measurement/p2;->zza:Lcom/google/android/gms/internal/measurement/p2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
