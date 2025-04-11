.class public final Lcom/google/android/gms/measurement/internal/k5;
.super Lcom/google/android/gms/measurement/internal/g3;
.source "SourceFile"


# instance fields
.field public c:Ll3/c;

.field public final d:Lf9/b;

.field public final e:Lcom/google/android/gms/measurement/internal/j5;

.field public final f:Lcom/google/android/gms/internal/measurement/h3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    new-instance p1, Lf9/b;

    const/16 v0, 0x12

    invoke-direct {p1, p0, v0}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k5;->d:Lf9/b;

    new-instance p1, Lcom/google/android/gms/measurement/internal/j5;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/j5;-><init>(Lcom/google/android/gms/measurement/internal/k5;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    new-instance p1, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/h3;-><init>(Lcom/google/android/gms/measurement/internal/k5;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k5;->f:Lcom/google/android/gms/internal/measurement/h3;

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k5;->c:Ll3/c;

    if-nez v0, :cond_0

    new-instance v0, Ll3/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ll3/c;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/k5;->c:Ll3/c;

    :cond_0
    return-void
.end method
