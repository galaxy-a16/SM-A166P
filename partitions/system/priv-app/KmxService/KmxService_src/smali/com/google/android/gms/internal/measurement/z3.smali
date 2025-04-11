.class public final Lcom/google/android/gms/internal/measurement/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjd;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, p0, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz v5, :cond_5

    if-ge v3, v0, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    if-ge v2, p0, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzb(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ge v3, v0, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/measurement/zzjd;->zzb(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    :goto_3
    return v2
.end method
