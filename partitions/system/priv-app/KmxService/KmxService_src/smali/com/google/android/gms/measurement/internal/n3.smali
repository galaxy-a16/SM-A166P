.class public final Lcom/google/android/gms/measurement/internal/n3;
.super Ll/e;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/measurement/internal/o3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/o3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n3;->f:Lcom/google/android/gms/measurement/internal/o3;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Ll/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/n3;->f:Lcom/google/android/gms/measurement/internal/o3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    invoke-static {p1}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->w(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    invoke-virtual {v0, p1}, Ll/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o3;->h:Ll/b;

    invoke-virtual {v0, p1, v1}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/t1;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o3;->r(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o3;->q(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/n3;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ll/e;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/d0;

    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
