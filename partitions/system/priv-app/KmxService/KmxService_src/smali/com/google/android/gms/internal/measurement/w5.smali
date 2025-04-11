.class public final Lcom/google/android/gms/internal/measurement/w5;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/measurement/t4;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/t4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/t4;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w5;->a:Lcom/google/android/gms/internal/measurement/t4;

    return-void
.end method


# virtual methods
.method public final J(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w5;->a:Lcom/google/android/gms/internal/measurement/t4;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/t4;->J(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final M(Lcom/google/android/gms/internal/measurement/zzjd;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w5;->a:Lcom/google/android/gms/internal/measurement/t4;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/t4;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/t4;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w5;->a:Lcom/google/android/gms/internal/measurement/t4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/s4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/s4;->e(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/v5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/v5;-><init>(Lcom/google/android/gms/internal/measurement/w5;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/u5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/w5;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/w5;->a:Lcom/google/android/gms/internal/measurement/t4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
