.class public final Lcom/google/android/gms/internal/measurement/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/q3;


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/s7;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/q3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/s7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/s7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/s7;->b:Lcom/google/android/gms/internal/measurement/s7;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/u7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/u7;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/d3;->e(Lcom/google/android/gms/internal/measurement/q3;)Lcom/google/android/gms/internal/measurement/q3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/s7;->a:Lcom/google/android/gms/internal/measurement/q3;

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/s7;->b:Lcom/google/android/gms/internal/measurement/s7;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s7;->a()Lcom/google/android/gms/internal/measurement/t7;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/t7;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/s7;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/t7;

    return-object p0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/s7;->a()Lcom/google/android/gms/internal/measurement/t7;

    move-result-object p0

    return-object p0
.end method
