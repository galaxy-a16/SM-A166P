.class public final Lcom/google/android/gms/measurement/internal/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/r4;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/r4;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/u4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u4;Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/r4;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s4;->e:Lcom/google/android/gms/measurement/internal/u4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s4;->a:Lcom/google/android/gms/measurement/internal/r4;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/s4;->b:Lcom/google/android/gms/measurement/internal/r4;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/s4;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/s4;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s4;->e:Lcom/google/android/gms/measurement/internal/u4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s4;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s4;->b:Lcom/google/android/gms/measurement/internal/r4;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/s4;->c:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/s4;->d:Z

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/u4;->o(Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/r4;JZLandroid/os/Bundle;)V

    return-void
.end method
