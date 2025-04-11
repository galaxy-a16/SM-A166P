.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
.super Ljava/lang/Object;
.source "KnoxGuardNative.java"


# static fields
.field public static SUCCESS:I

.field public static instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;


# instance fields
.field public ans_policy:Ljava/lang/String;

.field public ans_signature:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 542
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    monitor-enter v0

    .line 555
    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    if-nez v1, :cond_0

    .line 556
    new-instance v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 558
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
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
.method public final cleanState()V
    .locals 1

    const/4 v0, 0x0

    .line 577
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 578
    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized getPolicyRes()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignature()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readData()I
    .locals 2

    monitor-enter p0

    .line 647
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string v0, "KGTAPolicy"

    const-string/jumbo v1, "use TA to store policy, skipping the EFS..."

    .line 650
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, " "

    .line 651
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->storeDataReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    monitor-enter p0

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string p1, "KGTAPolicy"

    const-string/jumbo p2, "use TA to store policy, skipping the EFS..."

    .line 625
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final storeDataReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    .line 619
    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method
