.class public Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "LocalProxyManager.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3

    const/4 v0, -0x1

    const-string v1, "LocalProxyManager"

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$fgetDBG(Lcom/android/server/enterprise/proxy/LocalProxyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy bound at port "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$sfputsIsLocalProxyServerRunning(Z)V

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->-$$Nest$msetLocalProxyPort(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    goto :goto_0

    :cond_1
    const-string p0, "Received invalid port from Local Proxy, proxy will not be operational"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
