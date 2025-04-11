.class public final Lcom/google/android/gms/internal/measurement/y3;
.super Lcom/google/android/gms/internal/measurement/a4;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:I

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzjd;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y3;->c:Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/a4;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/y3;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/y3;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/y3;->a:I

    iget p0, p0, Lcom/google/android/gms/internal/measurement/y3;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
