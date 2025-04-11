.class public Lcom/android/server/connectivity/Vpn$Dependencies$1;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn$Dependencies;

.field public final synthetic val$endpoint:Ljava/lang/String;

.field public final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$Dependencies;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->this$0:Lcom/android/server/connectivity/Vpn$Dependencies;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0

    .line 716
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn$Dependencies$1;->onAnswer(Ljava/util/List;I)V

    return-void
.end method

.method public onAnswer(Ljava/util/List;I)V
    .locals 2

    .line 720
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    move v0, p2

    .line 722
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 723
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 724
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolved address: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Vpn"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1

    .line 732
    :cond_2
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    new-instance p2, Ljava/net/UnknownHostException;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 2

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Async dns resolver error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vpn"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/net/UnknownHostException;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
