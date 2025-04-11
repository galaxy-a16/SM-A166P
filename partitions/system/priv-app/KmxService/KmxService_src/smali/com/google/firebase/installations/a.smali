.class public final Lcom/google/firebase/installations/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/d;


# static fields
.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Lv4/g;

.field public final b:Lm5/c;

.field public final c:Lp1/l;

.field public final d:Lk5/i;

.field public final e:La5/n;

.field public final f:Lk5/g;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/HashSet;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    const/4 v0, 0x1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lv4/g;Lj5/a;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/concurrent/j;)V
    .locals 5

    new-instance v0, Lm5/c;

    invoke-virtual {p1}, Lv4/g;->a()V

    iget-object v1, p1, Lv4/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lm5/c;-><init>(Landroid/content/Context;Lj5/a;)V

    new-instance p2, Lp1/l;

    invoke-direct {p2, p1}, Lp1/l;-><init>(Lv4/g;)V

    invoke-static {}, Lk5/i;->a()Lk5/i;

    move-result-object v1

    new-instance v2, La5/n;

    new-instance v3, La5/e;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, La5/e;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, La5/n;-><init>(Lj5/a;)V

    new-instance v3, Lk5/g;

    invoke-direct {v3}, Lk5/g;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/google/firebase/installations/a;->k:Ljava/util/HashSet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    iput-object v0, p0, Lcom/google/firebase/installations/a;->b:Lm5/c;

    iput-object p2, p0, Lcom/google/firebase/installations/a;->c:Lp1/l;

    iput-object v1, p0, Lcom/google/firebase/installations/a;->d:Lk5/i;

    iput-object v2, p0, Lcom/google/firebase/installations/a;->e:La5/n;

    iput-object v3, p0, Lcom/google/firebase/installations/a;->f:Lk5/g;

    iput-object p3, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/firebase/installations/a;->i:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    sget-object v0, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v1}, Lv4/g;->a()V

    iget-object v1, v1, Lv4/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lp1/e;->a(Landroid/content/Context;)Lp1/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/installations/a;->c:Lp1/l;

    invoke-virtual {v2}, Lp1/l;->m()Ll5/a;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->NOT_GENERATED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iget-object v4, v2, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    const/4 v5, 0x0

    if-eq v4, v3, :cond_1

    sget-object v3, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/a;->f(Ll5/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/installations/a;->c:Lp1/l;

    new-instance v6, Ln2/l;

    invoke-direct {v6, v2}, Ln2/l;-><init>(Ll5/a;)V

    iput-object v3, v6, Ln2/l;->d:Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->UNREGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    invoke-virtual {v6, v2}, Ln2/l;->h(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)V

    invoke-virtual {v6}, Ln2/l;->f()Ll5/a;

    move-result-object v2

    invoke-virtual {v4, v2}, Lp1/l;->l(Ll5/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Lp1/e;->l()V

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_4

    new-instance v0, Ln2/l;

    invoke-direct {v0, v2}, Ln2/l;-><init>(Ll5/a;)V

    const/4 v1, 0x0

    iput-object v1, v0, Ln2/l;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ln2/l;->f()Ll5/a;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/firebase/installations/a;->h(Ll5/a;)V

    iget-object v0, p0, Lcom/google/firebase/installations/a;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lk5/b;

    invoke-direct {v1, v5, p0, p1}, Lk5/b;-><init>(ILjava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Lp1/e;->l()V

    :cond_5
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final b(Ll5/a;)Ll5/a;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v2}, Lv4/g;->a()V

    iget-object v2, v2, Lv4/g;->c:Lv4/i;

    iget-object v2, v2, Lv4/i;->a:Ljava/lang/String;

    iget-object v3, v0, Ll5/a;->a:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v4}, Lv4/g;->a()V

    iget-object v4, v4, Lv4/g;->c:Lv4/i;

    iget-object v4, v4, Lv4/i;->g:Ljava/lang/String;

    iget-object v5, v0, Ll5/a;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/firebase/installations/a;->b:Lm5/c;

    iget-object v7, v6, Lm5/c;->c:Lm5/d;

    monitor-enter v7

    :try_start_0
    iget v8, v7, Lm5/d;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    iget-object v8, v7, Lm5/d;->a:Lk5/i;

    iget-object v8, v8, Lk5/i;->a:Lm1/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v7, Lm5/d;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v8, v11, v13

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v10

    :goto_1
    monitor-exit v7

    const-string v11, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v8, :cond_c

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v4, v12, v9

    aput-object v3, v12, v10

    const-string v3, "projects/%s/installations/%s/authTokens:generate"

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lm5/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move v12, v9

    :goto_2
    if-gt v12, v10, :cond_b

    const v13, 0x8003

    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v6, v3, v2}, Lm5/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v13

    :try_start_1
    const-string v14, "POST"

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FIS_v2 "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v14, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-static {v13}, Lm5/c;->h(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v7, v9}, Lm5/d;->a(I)V

    const/16 v14, 0xc8

    if-lt v9, v14, :cond_2

    const/16 v14, 0x12c

    if-ge v9, v14, :cond_2

    move v14, v10

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    const/4 v15, 0x0

    if-eqz v14, :cond_3

    invoke-static {v13}, Lm5/c;->f(Ljava/net/HttpURLConnection;)Lm5/b;

    move-result-object v2

    goto :goto_6

    :cond_3
    invoke-static {v13, v15, v2, v4}, Lm5/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x191

    if-eq v9, v14, :cond_7

    const/16 v14, 0x194

    if-ne v9, v14, :cond_4

    goto :goto_4

    :cond_4
    const/16 v14, 0x1ad

    if-eq v9, v14, :cond_6

    const/16 v14, 0x1f4

    if-lt v9, v14, :cond_5

    const/16 v14, 0x258

    if-ge v9, v14, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string v9, "Firebase-Installations"

    const-string v14, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lm5/b;->a()Lp1/v;

    move-result-object v9

    sget-object v14, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    goto :goto_5

    :cond_6
    new-instance v9, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v14, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v15, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v9, v14, v15}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v9

    :cond_7
    :goto_4
    invoke-static {}, Lm5/b;->a()Lp1/v;

    move-result-object v9

    sget-object v14, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->AUTH_ERROR:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    :goto_5
    iput-object v14, v9, Lp1/v;->d:Ljava/lang/Object;

    invoke-virtual {v9}, Lp1/v;->f()Lm5/b;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    sget-object v3, Lk5/c;->b:[I

    iget-object v4, v2, Lm5/b;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v10, :cond_a

    if-eq v3, v8, :cond_9

    const/4 v2, 0x3

    if-ne v3, v2, :cond_8

    monitor-enter p0

    :try_start_2
    iput-object v15, v1, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    new-instance v1, Ln2/l;

    invoke-direct {v1, v0}, Ln2/l;-><init>(Ll5/a;)V

    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->NOT_GENERATED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    invoke-virtual {v1, v0}, Ln2/l;->h(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)V

    invoke-virtual {v1}, Ln2/l;->f()Ll5/a;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2

    :cond_8
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v11, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    :cond_9
    new-instance v1, Ln2/l;

    invoke-direct {v1, v0}, Ln2/l;-><init>(Ll5/a;)V

    const-string v0, "BAD CONFIG"

    iput-object v0, v1, Ln2/l;->g:Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTER_ERROR:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    invoke-virtual {v1, v0}, Ln2/l;->h(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)V

    invoke-virtual {v1}, Ln2/l;->f()Ll5/a;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v1, v1, Lcom/google/firebase/installations/a;->d:Lk5/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, v1, Lk5/i;->a:Lm1/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    new-instance v1, Ln2/l;

    invoke-direct {v1, v0}, Ln2/l;-><init>(Ll5/a;)V

    iget-object v0, v2, Lm5/b;->a:Ljava/lang/String;

    iput-object v0, v1, Ln2/l;->c:Ljava/lang/Object;

    iget-wide v5, v2, Lm5/b;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Ln2/l;->a:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Ln2/l;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ln2/l;->f()Ll5/a;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :catch_0
    :goto_7
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v11, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v11, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final c()Lr3/o;
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->e()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lr3/i;

    invoke-direct {v0}, Lr3/i;-><init>()V

    new-instance v1, Lk5/f;

    invoke-direct {v1, v0}, Lk5/f;-><init>(Lr3/i;)V

    iget-object v2, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v0, Lr3/i;->a:Lr3/o;

    iget-object v1, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lt/a;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lt/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lr3/o;
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/installations/a;->e()V

    new-instance v0, Lr3/i;

    invoke-direct {v0}, Lr3/i;-><init>()V

    new-instance v1, Lk5/e;

    iget-object v2, p0, Lcom/google/firebase/installations/a;->d:Lk5/i;

    invoke-direct {v1, v2, v0}, Lk5/e;-><init>(Lk5/i;Lr3/i;)V

    iget-object v2, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lk5/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lk5/b;-><init>(ILjava/lang/Object;Z)V

    iget-object p0, p0, Lcom/google/firebase/installations/a;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lr3/i;->a:Lr3/o;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 4

    iget-object p0, p0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object v0, p0, Lv4/g;->c:Lv4/i;

    iget-object v0, v0, Lv4/i;->b:Ljava/lang/String;

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v1, v0}, Lva/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object v0, p0, Lv4/g;->c:Lv4/i;

    iget-object v0, v0, Lv4/i;->g:Ljava/lang/String;

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v2, v0}, Lva/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object v0, p0, Lv4/g;->c:Lv4/i;

    iget-object v0, v0, Lv4/i;->a:Ljava/lang/String;

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v2, v0}, Lva/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object v0, p0, Lv4/g;->c:Lv4/i;

    iget-object v0, v0, Lv4/i;->b:Ljava/lang/String;

    sget-object v3, Lk5/i;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v0}, Lva/n;->b(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object p0, p0, Lv4/g;->c:Lv4/i;

    iget-object p0, p0, Lv4/i;->a:Ljava/lang/String;

    sget-object v0, Lk5/i;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {v2, p0}, Lva/n;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final f(Ll5/a;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v0}, Lv4/g;->a()V

    iget-object v0, v0, Lv4/g;->b:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v0}, Lv4/g;->a()V

    const-string v1, "[DEFAULT]"

    iget-object v0, v0, Lv4/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->ATTEMPT_MIGRATION:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    iget-object p1, p1, Ll5/a;->b:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/installations/a;->f:Lk5/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lk5/g;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/google/firebase/installations/a;->e:La5/n;

    invoke-virtual {p1}, La5/n;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll5/b;

    iget-object v0, p1, Ll5/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Ll5/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p1, Ll5/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "|S|id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ll5/b;->a()Ljava/lang/String;

    move-result-object v2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/google/firebase/installations/a;->f:Lk5/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lk5/g;->a()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final g(Ll5/a;)Ll5/a;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Ll5/a;->a:Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0xb

    if-ne v2, v6, :cond_3

    iget-object v2, v0, Lcom/google/firebase/installations/a;->e:La5/n;

    invoke-virtual {v2}, La5/n;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll5/b;

    iget-object v6, v2, Ll5/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v6

    :try_start_0
    sget-object v7, Ll5/b;->c:[Ljava/lang/String;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_1

    aget-object v9, v7, v8

    iget-object v10, v2, Ll5/b;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "|T|"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "|"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Ll5/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v10, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v2, "{"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "token"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v5, v9

    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/google/firebase/installations/a;->b:Lm5/c;

    iget-object v6, v0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v6}, Lv4/g;->a()V

    iget-object v6, v6, Lv4/g;->c:Lv4/i;

    iget-object v6, v6, Lv4/i;->a:Ljava/lang/String;

    iget-object v7, v1, Ll5/a;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v8}, Lv4/g;->a()V

    iget-object v8, v8, Lv4/g;->c:Lv4/i;

    iget-object v8, v8, Lv4/i;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/firebase/installations/a;->a:Lv4/g;

    invoke-virtual {v9}, Lv4/g;->a()V

    iget-object v9, v9, Lv4/g;->c:Lv4/i;

    iget-object v9, v9, Lv4/i;->b:Ljava/lang/String;

    iget-object v10, v2, Lm5/c;->c:Lm5/d;

    monitor-enter v10

    :try_start_3
    iget v11, v10, Lm5/d;->c:I

    const/4 v12, 0x1

    if-eqz v11, :cond_5

    iget-object v11, v10, Lm5/d;->a:Lk5/i;

    iget-object v11, v11, Lk5/i;->a:Lm1/e;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-wide v3, v10, Lm5/d;->b:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    cmp-long v3, v13, v3

    if-lez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v12

    :goto_4
    monitor-exit v10

    const-string v4, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v3, :cond_e

    new-array v3, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v3, v13

    const-string v14, "projects/%s/installations"

    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lm5/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    move v14, v13

    :goto_5
    if-gt v14, v12, :cond_d

    const v15, 0x8001

    invoke-static {v15}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v2, v3, v6}, Lm5/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v15

    :try_start_4
    const-string v11, "POST"

    invoke-virtual {v15, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    if-eqz v5, :cond_6

    const-string v11, "x-goog-fis-android-iid-migration-auth"

    invoke-virtual {v15, v11, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v15, v7, v9}, Lm5/c;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Lm5/d;->a(I)V

    const/16 v13, 0xc8

    if-lt v11, v13, :cond_7

    const/16 v13, 0x12c

    if-ge v11, v13, :cond_7

    move v13, v12

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_8

    invoke-static {v15}, Lm5/c;->e(Ljava/net/HttpURLConnection;)Lm5/a;

    move-result-object v2

    goto :goto_7

    :cond_8
    invoke-static {v15, v9, v6, v8}, Lm5/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x1ad

    if-eq v11, v13, :cond_c

    const/16 v13, 0x1f4

    if-lt v11, v13, :cond_9

    const/16 v13, 0x258

    if-ge v11, v13, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v11, "Firebase-Installations"

    const-string v13, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lo2/i;

    const/4 v13, 0x4

    invoke-direct {v11, v13}, Lo2/i;-><init>(I)V

    sget-object v13, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    iput-object v13, v11, Lo2/i;->c:Ljava/lang/Object;

    invoke-virtual {v11}, Lo2/i;->c()Lm5/a;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_7
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    sget-object v3, Lk5/c;->a:[I

    iget-object v4, v2, Lm5/a;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v12, :cond_b

    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    new-instance v0, Ln2/l;

    invoke-direct {v0, v1}, Ln2/l;-><init>(Ll5/a;)V

    const-string v1, "BAD CONFIG"

    iput-object v1, v0, Ln2/l;->g:Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTER_ERROR:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    invoke-virtual {v0, v1}, Ln2/l;->h(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)V

    invoke-virtual {v0}, Ln2/l;->f()Ll5/a;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    sget-object v2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    :cond_b
    iget-object v3, v2, Lm5/a;->b:Ljava/lang/String;

    iget-object v4, v2, Lm5/a;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/firebase/installations/a;->d:Lk5/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lk5/i;->a:Lm1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    iget-object v0, v2, Lm5/a;->d:Lm5/b;

    iget-object v2, v0, Lm5/b;->a:Ljava/lang/String;

    iget-wide v7, v0, Lm5/b;->b:J

    new-instance v0, Ln2/l;

    invoke-direct {v0, v1}, Ln2/l;-><init>(Ll5/a;)V

    iput-object v3, v0, Ln2/l;->d:Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;->REGISTERED:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    invoke-virtual {v0, v1}, Ln2/l;->h(Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;)V

    iput-object v2, v0, Ln2/l;->c:Ljava/lang/Object;

    iput-object v4, v0, Ln2/l;->f:Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ln2/l;->a:Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ln2/l;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ln2/l;->f()Ll5/a;

    move-result-object v0

    return-object v0

    :cond_c
    :try_start_5
    new-instance v11, Lcom/google/firebase/installations/FirebaseInstallationsException;

    const-string v13, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v12, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v11, v13, v12}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v11
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0

    :catch_1
    :goto_8
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_d
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v4, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    invoke-direct {v0, v4, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public final h(Ll5/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/installations/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/installations/a;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5/h;

    invoke-interface {v1, p1}, Lk5/h;->a(Ll5/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
