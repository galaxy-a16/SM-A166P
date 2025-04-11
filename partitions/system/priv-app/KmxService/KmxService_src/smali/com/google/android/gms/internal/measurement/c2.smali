.class public final Lcom/google/android/gms/internal/measurement/c2;
.super Lcom/google/android/gms/internal/measurement/k4;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d2;->q()Lcom/google/android/gms/internal/measurement/d2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/k4;-><init>(Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method


# virtual methods
.method public final g()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d2;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Lcom/google/android/gms/internal/measurement/g2;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/h2;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/d2;->v(Lcom/google/android/gms/internal/measurement/d2;Lcom/google/android/gms/internal/measurement/h2;)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/d2;->y(Lcom/google/android/gms/internal/measurement/d2;I)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/d2;->z(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)V

    return-void
.end method

.method public final l(ILcom/google/android/gms/internal/measurement/h2;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/d2;->u(Lcom/google/android/gms/internal/measurement/d2;ILcom/google/android/gms/internal/measurement/h2;)V

    return-void
.end method

.method public final m(I)Lcom/google/android/gms/internal/measurement/h2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/d2;->r(I)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d2;->t()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
