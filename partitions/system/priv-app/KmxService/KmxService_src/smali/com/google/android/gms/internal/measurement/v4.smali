.class public final Lcom/google/android/gms/internal/measurement/v4;
.super Lcom/google/android/gms/internal/measurement/w4;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/w4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/q4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/u3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/q4;

    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/a6;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/measurement/q4;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/measurement/u3;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/u3;->a:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/q4;->i(I)Lcom/google/android/gms/internal/measurement/q4;

    move-result-object p0

    :cond_0
    invoke-interface {p0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p4, p0

    :goto_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/a6;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
