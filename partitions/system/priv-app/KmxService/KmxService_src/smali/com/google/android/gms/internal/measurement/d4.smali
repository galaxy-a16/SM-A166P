.class public final Lcom/google/android/gms/internal/measurement/d4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/c4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/c4;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/r4;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/c4;->a:Lcom/google/android/gms/internal/measurement/d4;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 3

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c4;->m(IJ)V

    return-void
.end method

.method public final c(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    return-void
.end method

.method public final d(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c4;->m(IJ)V

    return-void
.end method

.method public final e(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/c4;->c(B)V

    return-void
.end method

.method public final f(ILcom/google/android/gms/internal/measurement/zzjd;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/c4;->e(ILcom/google/android/gms/internal/measurement/zzjd;)V

    return-void
.end method

.method public final g(ID)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c4;->h(IJ)V

    return-void
.end method

.method public final h(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/c4;->n(J)V

    :goto_0
    return-void
.end method

.method public final i(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/c4;->f(II)V

    return-void
.end method

.method public final j(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c4;->h(IJ)V

    return-void
.end method

.method public final k(FI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/c4;->f(II)V

    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V
    .locals 1

    check-cast p3, Lcom/google/android/gms/internal/measurement/g5;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/c4;->k(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c4;->a:Lcom/google/android/gms/internal/measurement/d4;

    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/measurement/p5;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/c4;->k(II)V

    return-void
.end method

.method public final m(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    goto :goto_0

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/c4;->n(J)V

    :goto_0
    return-void
.end method

.method public final n(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c4;->m(IJ)V

    return-void
.end method

.method public final o(ILcom/google/android/gms/internal/measurement/p5;Ljava/lang/Object;)V
    .locals 3

    check-cast p3, Lcom/google/android/gms/internal/measurement/g5;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/t3;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/l4;->zzd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/p5;->b(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/measurement/l4;->zzd:I

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c4;->l(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c4;->a:Lcom/google/android/gms/internal/measurement/d4;

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/measurement/p5;->e(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/d4;)V

    return-void
.end method

.method public final p(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/c4;->f(II)V

    return-void
.end method

.method public final q(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d4;->a:Lcom/google/android/gms/internal/measurement/c4;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c4;->h(IJ)V

    return-void
.end method
