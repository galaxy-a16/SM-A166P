.class public Lcom/android/server/connectivity/PacProxyService$1;
.super Ljava/lang/Object;
.source "PacProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmPacUrl(Lcom/android/server/connectivity/PacProxyService;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, -0xbb

    .line 127
    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 130
    :try_start_0
    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PacProxyService"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load PAC file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmProxyLock(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmCurrentPac(Lcom/android/server/connectivity/PacProxyService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v2, v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msetCurrentProxyScript(Lcom/android/server/connectivity/PacProxyService;Ljava/lang/String;)V

    .line 142
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmHasDownloaded(Lcom/android/server/connectivity/PacProxyService;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    .line 145
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$mlongSchedule(Lcom/android/server/connectivity/PacProxyService;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 142
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 147
    :cond_2
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$1;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$mreschedule(Lcom/android/server/connectivity/PacProxyService;)V

    :goto_1
    return-void

    .line 135
    :goto_2
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 136
    throw p0
.end method
