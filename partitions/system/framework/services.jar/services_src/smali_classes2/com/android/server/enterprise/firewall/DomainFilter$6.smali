.class public Lcom/android/server/enterprise/firewall/DomainFilter$6;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public final synthetic val$network:Landroid/net/Network;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->val$network:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mgetCaptivePortalCheckUrl(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Captive portal url is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->val$network:Landroid/net/Network;

    invoke-virtual {v2, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 415
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v2, 0x2710

    .line 416
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 417
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 418
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Location"

    .line 420
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$mextractHost(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$misIpAddress(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$6;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$maddHostToCaptivePortalWhitelist(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "invalid captive portal host"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 440
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 442
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 443
    :cond_4
    throw p0
.end method
