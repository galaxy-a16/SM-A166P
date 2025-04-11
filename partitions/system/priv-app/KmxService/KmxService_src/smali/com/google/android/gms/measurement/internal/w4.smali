.class public final Lcom/google/android/gms/measurement/internal/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/w5;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/r5;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;ZLcom/google/android/gms/measurement/internal/r5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w4;->d:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w4;->a:Lcom/google/android/gms/measurement/internal/w5;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/w4;->b:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/w4;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w4;->d:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v1, :cond_0

    iget-object p0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Discarding data. Failed to set user property"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w4;->a:Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/w4;->b:Z

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/w4;->c:Lcom/google/android/gms/measurement/internal/r5;

    :goto_0
    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/measurement/internal/c5;->o(Lcom/google/android/gms/measurement/internal/q2;Ld3/a;Lcom/google/android/gms/measurement/internal/w5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c5;->v()V

    return-void
.end method
