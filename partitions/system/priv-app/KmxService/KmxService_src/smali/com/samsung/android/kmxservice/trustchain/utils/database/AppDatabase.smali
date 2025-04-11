.class public abstract Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "KMX_TRUSTCHAIN"

.field private static INSTANCE:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase; = null

.field static final MIGRATION_1_2:Ly0/a;

.field static final MIGRATION_2_3:Ly0/a;

.field static final MIGRATION_3_4:Ly0/a;

.field static final MIGRATION_4_5:Ly0/a;

.field static final MIGRATION_5_6:Ly0/a;

.field static final MIGRATION_6_7:Ly0/a;

.field private static final TAG:Ljava/lang/String; = "TrustChain::AppDatabase"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$1;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$1;-><init>(II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_1_2:Ly0/a;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$2;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$2;-><init>(II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_2_3:Ly0/a;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$3;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$3;-><init>(II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_3_4:Ly0/a;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$4;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$4;-><init>(II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_4_5:Ly0/a;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$5;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$5;-><init>(II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_5_6:Ly0/a;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$6;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase$6;-><init>(II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_6_7:Ly0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
    .locals 6

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->INSTANCE:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-class v1, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    const-string v2, "KMX_TRUSTCHAIN"

    invoke-static {p0, v1, v2}, Lva/n;->m(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/w;

    move-result-object p0

    const/4 v1, 0x6

    new-array v1, v1, [Ly0/a;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_1_2:Ly0/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_2_3:Ly0/a;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_3_4:Ly0/a;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_4_5:Ly0/a;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_5_6:Ly0/a;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->MIGRATION_6_7:Ly0/a;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Landroidx/room/w;->a([Ly0/a;)V

    iput-boolean v3, p0, Landroidx/room/w;->l:Z

    iput-boolean v4, p0, Landroidx/room/w;->m:Z

    invoke-virtual {p0}, Landroidx/room/w;->b()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;

    sput-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->INSTANCE:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "TrustChain::AppDatabase"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;->INSTANCE:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;
.end method

.method public abstract fabricInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;
.end method

.method public abstract memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;
.end method

.method public abstract saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;
.end method
