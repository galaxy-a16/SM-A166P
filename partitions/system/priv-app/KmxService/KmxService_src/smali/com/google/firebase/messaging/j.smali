.class public final Lcom/google/firebase/messaging/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Lcom/google/firebase/messaging/d0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Li/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/j;->a:Landroid/content/Context;

    new-instance p1, Li/a;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Li/a;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/j;->b:Li/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)Lr3/o;
    .locals 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v1, "Binding to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/j;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/j;->d:Lcom/google/firebase/messaging/d0;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/firebase/messaging/d0;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/d0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/j;->d:Lcom/google/firebase/messaging/d0;

    :cond_1
    sget-object v1, Lcom/google/firebase/messaging/j;->d:Lcom/google/firebase/messaging/d0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/firebase/messaging/r;->c()Lcom/google/firebase/messaging/r;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/r;->e(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/google/firebase/messaging/a0;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    sget-object v0, Lcom/google/firebase/messaging/a0;->c:Lq3/a;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    new-instance v0, Lq3/a;

    invoke-direct {v0, p0}, Lq3/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/messaging/a0;->c:Lq3/a;

    iget-object p0, v0, Lq3/a;->a:Ljava/lang/Object;

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v2, v0, Lq3/a;->g:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_2
    :goto_0
    const-string p0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/firebase/messaging/a0;->c:Lq3/a;

    sget-wide v2, Lcom/google/firebase/messaging/a0;->a:J

    invoke-virtual {p0, v2, v3}, Lq3/a;->a(J)V

    :cond_3
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/d0;->b(Landroid/content/Intent;)Lr3/o;

    move-result-object p0

    new-instance v0, La5/a;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lr3/j;->a:Lr1/b;

    new-instance v1, Lr3/m;

    invoke-direct {v1, p1, v0}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/d;)V

    iget-object p1, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {p1, v1}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/d0;->b(Landroid/content/Intent;)Lr3/o;

    :goto_1
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/d0;->b(Landroid/content/Intent;)Lr3/o;

    move-result-object p0

    new-instance p1, Li/a;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Li/a;-><init>(I)V

    new-instance p2, Lcom/google/firebase/concurrent/h;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lr3/o;->g(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)Lr3/o;
    .locals 6

    const-string v0, "gcm.rawData64"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "rawData"

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-lt v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    invoke-static {v0, p1, v2}, Lcom/google/firebase/messaging/j;->a(Landroid/content/Context;Landroid/content/Intent;Z)Lr3/o;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/firebase/messaging/h;

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/messaging/h;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/j;->b:Li/a;

    invoke-static {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lr3/o;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/messaging/i;

    invoke-direct {v3, v0, p1, v2}, Lcom/google/firebase/messaging/i;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-virtual {v1, p0, v3}, Lr3/o;->h(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object p0

    :goto_1
    return-object p0
.end method
