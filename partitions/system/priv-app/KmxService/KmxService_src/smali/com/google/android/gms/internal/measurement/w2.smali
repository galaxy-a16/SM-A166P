.class public final Lcom/google/android/gms/internal/measurement/w2;
.super Lcom/google/android/gms/internal/measurement/l4;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/w2;


# instance fields
.field private zze:Lcom/google/android/gms/internal/measurement/q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/w2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/w2;->zza:Lcom/google/android/gms/internal/measurement/w2;

    const-class v1, Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/l4;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/l4;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/n5;->d:Lcom/google/android/gms/internal/measurement/n5;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/w2;->zze:Lcom/google/android/gms/internal/measurement/q4;

    return-void
.end method

.method public static synthetic m()Lcom/google/android/gms/internal/measurement/w2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w2;->zza:Lcom/google/android/gms/internal/measurement/w2;

    return-object v0
.end method

.method public static n()Lcom/google/android/gms/internal/measurement/w2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/w2;->zza:Lcom/google/android/gms/internal/measurement/w2;

    return-object v0
.end method


# virtual methods
.method public final k(I)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const/4 v0, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/w2;->zza:Lcom/google/android/gms/internal/measurement/w2;

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/measurement/i1;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/i1;-><init>(ILandroidx/activity/b;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/measurement/w2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w2;-><init>()V

    return-object p0

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "zze"

    aput-object v1, p1, v0

    const-class v0, Lcom/google/android/gms/internal/measurement/x2;

    aput-object v0, p1, p0

    sget-object p0, Lcom/google/android/gms/internal/measurement/w2;->zza:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o5;

    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/measurement/o5;-><init>(Lcom/google/android/gms/internal/measurement/l4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w2;->zze:Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final o()Lcom/google/android/gms/internal/measurement/q4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w2;->zze:Lcom/google/android/gms/internal/measurement/q4;

    return-object p0
.end method
