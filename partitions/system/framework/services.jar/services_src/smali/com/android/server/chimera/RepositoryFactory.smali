.class public Lcom/android/server/chimera/RepositoryFactory;
.super Ljava/lang/Object;
.source "RepositoryFactory.java"


# static fields
.field static sInstance:Lcom/android/server/chimera/RepositoryFactory;


# instance fields
.field mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/RepositoryFactory;
    .locals 2

    const-class v0, Lcom/android/server/chimera/RepositoryFactory;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/RepositoryFactory;->sInstance:Lcom/android/server/chimera/RepositoryFactory;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/server/chimera/RepositoryFactory;

    invoke-direct {v1}, Lcom/android/server/chimera/RepositoryFactory;-><init>()V

    sput-object v1, Lcom/android/server/chimera/RepositoryFactory;->sInstance:Lcom/android/server/chimera/RepositoryFactory;

    .line 26
    :cond_0
    sget-object v1, Lcom/android/server/chimera/RepositoryFactory;->sInstance:Lcom/android/server/chimera/RepositoryFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/chimera/SettingRepositoryDefault;

    invoke-direct {v0, p1}, Lcom/android/server/chimera/SettingRepositoryDefault;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/RepositoryFactory;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/chimera/SystemRepository;
    .locals 1

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/server/chimera/SystemRepositoryDefault;

    invoke-direct {v0, p1, p2}, Lcom/android/server/chimera/SystemRepositoryDefault;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/RepositoryFactory;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
