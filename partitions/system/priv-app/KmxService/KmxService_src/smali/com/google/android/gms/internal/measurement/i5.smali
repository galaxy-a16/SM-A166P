.class public final Lcom/google/android/gms/internal/measurement/i5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p5;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/g5;

.field public final b:Lcom/google/android/gms/internal/measurement/t5;

.field public final c:Lcom/google/android/gms/internal/measurement/f4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/t5;Lcom/google/android/gms/internal/measurement/f4;Lcom/google/android/gms/internal/measurement/g5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i5;->b:Lcom/google/android/gms/internal/measurement/t5;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/i5;->c:Lcom/google/android/gms/internal/measurement/f4;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/i5;->a:Lcom/google/android/gms/internal/measurement/g5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i5;->b:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/s5;->e:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->c:Lcom/google/android/gms/internal/measurement/f4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->b:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/s5;->d:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/s5;->a:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/s5;->b:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/s5;->c:[Ljava/lang/Object;

    aget-object v2, v2, p1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjd;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjd;->zzd()I

    move-result v2

    add-int/2addr v3, v3

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v4

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    const/16 v3, 0x18

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/c4;->a(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/measurement/s5;->d:I

    move p1, v0

    :cond_1
    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->b:Lcom/google/android/gms/internal/measurement/t5;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/q5;->b(Lcom/google/android/gms/internal/measurement/t5;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->a:Lcom/google/android/gms/internal/measurement/g5;

    check-cast p0, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/l4;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/k4;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->e()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->c:Lcom/google/android/gms/internal/measurement/f4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/w3;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    sget-object p3, Lcom/google/android/gms/internal/measurement/s5;->f:Lcom/google/android/gms/internal/measurement/s5;

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/s5;->b()Lcom/google/android/gms/internal/measurement/s5;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    :goto_0
    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->b:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p2, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/s5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->c:Lcom/google/android/gms/internal/measurement/f4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/i5;->b:Lcom/google/android/gms/internal/measurement/t5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/measurement/l4;

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/l4;->zzc:Lcom/google/android/gms/internal/measurement/s5;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/s5;->hashCode()I

    move-result p0

    return p0
.end method
