.class public final Lcom/google/android/gms/internal/measurement/u2;
.super Lcom/google/android/gms/internal/measurement/k4;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v2;->p()Lcom/google/android/gms/internal/measurement/v2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/k4;-><init>(Lcom/google/android/gms/internal/measurement/l4;)V

    return-void
.end method


# virtual methods
.method public final g(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/v2;->w(Lcom/google/android/gms/internal/measurement/v2;J)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/v2;->t(Lcom/google/android/gms/internal/measurement/v2;Ljava/lang/String;)V

    return-void
.end method

.method public final i(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/v2;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/v2;->s(Lcom/google/android/gms/internal/measurement/v2;J)V

    return-void
.end method
