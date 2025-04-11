.class Lcom/android/server/enterprise/firewall/DomainFilter$Injector;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# instance fields
.field public final mCtx:Landroid/content/Context;

.field public mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    .line 244
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    return-object p0
.end method

.method public getDnsResolverAdapter()Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;
    .locals 0

    .line 299
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDomainFilterNapCommon()Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    move-result-object p0

    return-object p0
.end method

.method public getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    .line 252
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mCtx:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getFirewallRulesApplier()Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    return-object p0
.end method

.method public getNetd()Landroid/net/INetd;
    .locals 2

    const-string/jumbo p0, "netd"

    .line 273
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 272
    invoke-static {p0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object p0

    if-nez p0, :cond_0

    .line 275
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WARNING: returning null INetd instance."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public getNetworkIdInfoArray()Ljava/util/ArrayList;
    .locals 0

    .line 260
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getNetworkManagementHandler(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;
    .locals 0

    .line 264
    new-instance p0, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)V

    return-object p0
.end method

.method public getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 3

    .line 281
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;->getNetd()Landroid/net/INetd;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 285
    :try_start_0
    invoke-interface {p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 288
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOemNetdService() - failed to retrieve getOemNetdService instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WARNING: returning null IOemNetd instance."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserIdMap()Ljava/util/Map;
    .locals 0

    .line 268
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method
