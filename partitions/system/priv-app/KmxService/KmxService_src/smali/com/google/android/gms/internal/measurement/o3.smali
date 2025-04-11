.class public abstract Lcom/google/android/gms/internal/measurement/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lcom/google/android/gms/internal/measurement/e3;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/n3;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/o3;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Le9/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le9/a;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/o3;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/n3;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/o3;->d:I

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n3;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/o3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/o3;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/measurement/o3;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/o3;->d:I

    if-ge v1, v0, :cond_f

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/o3;->d:I

    if-ge v1, v0, :cond_e

    sget-object v1, Lcom/google/android/gms/internal/measurement/o3;->g:Lcom/google/android/gms/internal/measurement/e3;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/n3;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/e3;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/n3;->a:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/j3;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/e3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/n3;->a:Landroid/net/Uri;

    sget-object v5, Lcom/google/android/gms/internal/measurement/l3;->a:Lcom/google/android/gms/internal/measurement/l3;

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/measurement/f3;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/f3;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/f3;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/o3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_5

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/n3;->b:Z

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/e3;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/internal/measurement/h3;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Lcom/google/android/gms/internal/measurement/h3;->d:Lcom/google/android/gms/internal/measurement/h3;

    if-nez v5, :cond_4

    const-string v5, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {v2, v5}, Lg2/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h3;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/measurement/h3;

    const/4 v2, 0x0

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h3;-><init>(I)V

    :goto_2
    sput-object v5, Lcom/google/android/gms/internal/measurement/h3;->d:Lcom/google/android/gms/internal/measurement/h3;

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/measurement/h3;->d:Lcom/google/android/gms/internal/measurement/h3;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/n3;->b:Z

    if-eqz v4, :cond_5

    move-object v4, v3

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->b:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/h3;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/o3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_6
    move-object v2, v3

    :goto_4
    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->c:Ljava/lang/Object;

    :cond_7
    :goto_5
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/e3;->b:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzif;->zzb()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/g3;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/n3;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/o3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/g3;->a:Ll/j;

    invoke-virtual {v1, v2, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/j;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :cond_9
    :goto_6
    if-nez v3, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->c:Ljava/lang/Object;

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/o3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_b
    :goto_7
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/o3;->e:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/o3;->d:I

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o3;->a:Lcom/google/android/gms/internal/measurement/n3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/internal/measurement/p3;->a:Ll/b;

    throw v3

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_8
    monitor-exit p0

    goto :goto_a

    :goto_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_f
    :goto_a
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/o3;->e:Ljava/lang/Object;

    return-object p0
.end method
