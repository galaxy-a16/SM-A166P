.class public Lcom/android/server/enterprise/firewall/EnforceDnsManager;
.super Ljava/lang/Object;
.source "EnforceDnsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EnforceDnsManager"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

.field public mEnforceDnsUid:Z

.field public final mLinkPropertiesMap:Ljava/util/Map;

.field public mMaxSamples:I

.field public mMinSamples:I

.field public mSampleValidity:I

.field public mSuccessThreshold:I

.field public final mTransportsMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    return-void
.end method

.method public static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public flushVmDnsCache()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getIntSetting(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public noteDnsServersForNetwork(ILandroid/net/LinkProperties;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    return-void
.end method

.method public sendDnsConfigurationForNetwork(I)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->updateParametersSettings()V

    new-instance v2, Landroid/net/ResolverParamsParcel;

    invoke-direct {v2}, Landroid/net/ResolverParamsParcel;-><init>()V

    iput p1, v2, Landroid/net/ResolverParamsParcel;->netId:I

    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->successThreshold:I

    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->minSamples:I

    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->maxSamples:I

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    const-string p1, ""

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    new-instance p1, Landroid/net/ResolverOptionsParcel;

    invoke-direct {p1}, Landroid/net/ResolverOptionsParcel;-><init>()V

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    iget-boolean v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    iput-boolean v0, p1, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    iput-object v1, v2, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    sget-object p1, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    iget v0, v2, Landroid/net/ResolverParamsParcel;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v2, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v0, v2, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, v2, Landroid/net/ResolverParamsParcel;->successThreshold:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, v2, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, v2, Landroid/net/ResolverParamsParcel;->maxSamples:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, v2, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, v2, Landroid/net/ResolverParamsParcel;->retryCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    iget-object v0, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v3 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "sendDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    invoke-interface {p0, v2}, Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDnsUidForNetwork(IZ)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    return-void
.end method

.method public final updateParametersSettings()V
    .locals 6

    const-string v0, "dns_resolver_sample_validity_seconds"

    const/16 v1, 0x708

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    const-string v2, ", using default="

    if-ltz v0, :cond_0

    const v3, 0xffff

    if-le v0, v3, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sampleValidity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    :cond_1
    const-string v0, "dns_resolver_success_threshold_percent"

    const/16 v1, 0x19

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    if-ltz v0, :cond_2

    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    :cond_2
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid successThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    :cond_3
    const-string v0, "dns_resolver_min_samples"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    const-string v0, "dns_resolver_max_samples"

    const/16 v2, 0x40

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    iget v3, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    if-ltz v3, :cond_4

    if-gt v3, v0, :cond_4

    if-le v0, v2, :cond_5

    :cond_4
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample count (min, max)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), using default=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    iput v2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    :cond_5
    return-void
.end method

.method public updateTransportsForNetwork(I[I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    return-void
.end method
