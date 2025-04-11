.class public final Lcom/android/server/power/PowerManagerService$Constants;
.super Landroid/database/ContentObserver;
.source "PowerManagerService.java"


# instance fields
.field public NO_CACHED_WAKE_LOCKS:Z

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 1239
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 1233
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    .line 1236
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 p2, 0x2c

    invoke-direct {p1, p2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  Settings power_manager_constants:"

    .line 1272
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    .line 1274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "no_cached_wake_locks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4

    const-wide v0, 0x10b00000001L

    .line 1279
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    .line 1280
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1282
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 2

    .line 1243
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "power_manager_constants"

    .line 1244
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$Constants;->updateConstants()V

    return-void
.end method

.method public final updateConstants()V
    .locals 4

    .line 1255
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$Constants;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "power_manager_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PowerManagerService"

    const-string v3, "Bad alarm manager settings"

    .line 1262
    invoke-static {v2, v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "no_cached_wake_locks"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    const-string v1, "PowerManagerService"

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] updateConstants: NO_CACHED_WAKE_LOCKS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService$Constants;->NO_CACHED_WAKE_LOCKS:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
