.class public abstract Lcom/google/android/gms/measurement/internal/n5;
.super Lcom/google/android/gms/measurement/internal/m5;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q5;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/q5;->t:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/q5;->t:I

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/n5;->c:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/n5;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n5;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget v1, v0, Lcom/google/android/gms/measurement/internal/q5;->u:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/measurement/internal/q5;->u:I

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/n5;->c:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t initialize twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract n()V
.end method
