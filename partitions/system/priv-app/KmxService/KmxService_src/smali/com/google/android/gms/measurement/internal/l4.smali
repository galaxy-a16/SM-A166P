.class public final Lcom/google/android/gms/measurement/internal/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/f;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/f;

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/n4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;IJZLcom/google/android/gms/measurement/internal/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Lcom/google/android/gms/measurement/internal/n4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/l4;->a:Lcom/google/android/gms/measurement/internal/f;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/l4;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/l4;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/l4;->d:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/l4;->e:Lcom/google/android/gms/measurement/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/l4;->a:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n4;->y(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/l4;->f:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/l4;->a:Lcom/google/android/gms/measurement/internal/f;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/l4;->b:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/l4;->c:J

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/l4;->d:Z

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/n4;->F(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;IJZZ)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    iget-object v2, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->p0:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/l4;->e:Lcom/google/android/gms/measurement/internal/f;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/n4;->E(Lcom/google/android/gms/measurement/internal/n4;Lcom/google/android/gms/measurement/internal/f;Lcom/google/android/gms/measurement/internal/f;)V

    :cond_0
    return-void
.end method
