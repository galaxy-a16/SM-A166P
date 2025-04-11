.class public final Lcom/google/android/gms/measurement/internal/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:J

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/h3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/h3;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h5;->c:Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/h5;->a:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/h5;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h5;->c:Lcom/google/android/gms/internal/measurement/h3;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/h3;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/k5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Landroidx/activity/k;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Landroidx/activity/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method
