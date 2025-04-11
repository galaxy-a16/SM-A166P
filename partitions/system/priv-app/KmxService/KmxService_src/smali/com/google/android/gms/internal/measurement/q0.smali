.class public final Lcom/google/android/gms/internal/measurement/q0;
.super Lcom/google/android/gms/internal/measurement/x0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Lcom/google/android/gms/internal/measurement/b1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/b1;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/q0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/q0;->f:Landroid/os/Bundle;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/x0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v3, Lj3/d;->b:Lm1/e;

    invoke-static {v2, v3, v0}, Lj3/d;->c(Landroid/content/Context;Lj3/c;Ljava/lang/String;)Lj3/d;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {v2, v3}, Lj3/d;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/f0;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/g0;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1, v2, v12, v13}, Lcom/google/android/gms/internal/measurement/b1;->a(Ljava/lang/Exception;ZZ)V

    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q0;->g:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FA"

    const-string v1, "Failed to connect to measurement client."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lj3/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    invoke-static {v2, v0, v13}, Lj3/d;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v0, v1, :cond_1

    move v6, v12

    goto :goto_1

    :cond_1
    move v6, v13

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/n0;

    int-to-long v4, v2

    const-wide/32 v2, 0x11d28

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/q0;->f:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    invoke-static {v1}, Lkotlinx/coroutines/a0;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/n0;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/q0;->g:Lcom/google/android/gms/internal/measurement/b1;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/b1;->e:Lcom/google/android/gms/internal/measurement/g0;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/q0;->e:Landroid/content/Context;

    new-instance v3, Li3/b;

    invoke-direct {v3, v2}, Li3/b;-><init>(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/x0;->a:J

    invoke-interface {v1, v3, v0, v4, v5}, Lcom/google/android/gms/internal/measurement/g0;->initialize(Li3/a;Lcom/google/android/gms/internal/measurement/n0;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/q0;->g:Lcom/google/android/gms/internal/measurement/b1;

    invoke-virtual {p0, v0, v12, v13}, Lcom/google/android/gms/internal/measurement/b1;->a(Ljava/lang/Exception;ZZ)V

    return-void
.end method
