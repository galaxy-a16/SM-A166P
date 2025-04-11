.class public abstract Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# static fields
.field public static a:Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

.field public static final b:Landroidx/work/impl/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/a0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/a0;-><init>(I)V

    sput-object v0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->b:Landroidx/work/impl/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;
    .locals 4

    const-class v0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->a:Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    if-nez v1, :cond_0

    const-class v1, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    const-string v2, "FABRIC_CHAIN"

    invoke-static {p0, v1, v2}, Lva/n;->m(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/w;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ly0/a;

    sget-object v2, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->b:Landroidx/work/impl/a0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroidx/room/w;->a([Ly0/a;)V

    invoke-virtual {p0}, Landroidx/room/w;->b()Landroidx/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    sput-object p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->a:Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    :cond_0
    sget-object p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->a:Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract c()Lva/a;
.end method

.method public abstract d()Lva/e;
.end method

.method public abstract f()Lva/f;
.end method

.method public abstract g()Lva/g;
.end method

.method public abstract h()Lva/m;
.end method
