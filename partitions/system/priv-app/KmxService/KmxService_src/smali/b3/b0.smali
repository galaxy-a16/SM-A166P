.class public final Lb3/b0;
.super Lb3/u;
.source "SourceFile"


# instance fields
.field public final b:Lr3/i;


# direct methods
.method public constructor <init>(Lr3/i;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lb3/u;-><init>(I)V

    iput-object p1, p0, Lb3/b0;->b:Lr3/i;

    return-void
.end method


# virtual methods
.method public final a(Lb3/p;)Z
    .locals 0

    iget-object p0, p1, Lb3/p;->h:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lb3/p;)[La3/d;
    .locals 0

    iget-object p0, p1, Lb3/p;->h:Ljava/util/HashMap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lb3/b0;->b:Lr3/i;

    invoke-virtual {p0, v0}, Lr3/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final d(Ljava/lang/RuntimeException;)V
    .locals 0

    iget-object p0, p0, Lb3/b0;->b:Lr3/i;

    invoke-virtual {p0, p1}, Lr3/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final e(Lb3/p;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lb3/b0;->h(Lb3/p;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lb3/b0;->b:Lr3/i;

    invoke-virtual {p0, p1}, Lr3/i;->b(Ljava/lang/Exception;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lb3/u;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb3/b0;->c(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :catch_2
    move-exception p1

    invoke-static {p1}, Lb3/u;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb3/b0;->c(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final bridge synthetic f(Lcom/google/android/gms/internal/measurement/h3;Z)V
    .locals 0

    return-void
.end method

.method public final h(Lb3/p;)V
    .locals 1

    iget-object p1, p1, Lb3/p;->h:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    iget-object p0, p0, Lb3/b0;->b:Lr3/i;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lr3/i;->c(Ljava/lang/Object;)V

    return-void
.end method
