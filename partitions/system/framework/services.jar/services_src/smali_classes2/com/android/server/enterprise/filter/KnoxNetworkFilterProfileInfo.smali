.class public Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
.super Ljava/lang/Object;
.source "KnoxNetworkFilterProfileInfo.java"


# static fields
.field public static final DBG:Z

.field public static mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public mBrowserAppList:Ljava/util/HashSet;

.field public volatile mDNSCacheStatus:I

.field public volatile mPackageName:Ljava/lang/String;

.field public volatile mPackageUid:I

.field public volatile mProfileName:Ljava/lang/String;

.field public volatile mRulesConfig:Ljava/lang/String;

.field public volatile mSocketConfig:Ljava/lang/String;

.field public volatile mState:I

.field public volatile mV4DnsConfigured:Z

.field public volatile mV4TcpConfigured:Z

.field public volatile mV4UdpConfigured:Z

.field public volatile mV6DnsConfigured:Z

.field public volatile mV6TcpConfigured:Z

.field public volatile mV6UdpConfigured:Z

.field public mVpnClientUidList:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->DBG:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6DnsConfigured:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    const/4 v1, 0x6

    .line 56
    iput v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    .line 65
    iput v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    return-void
.end method

.method public static declared-synchronized addProfileEntry(Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 167
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static containsProfileEntry(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 196
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getProfileEntries()Ljava/util/Collection;
    .locals 1

    .line 204
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    .locals 3

    const-class v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 184
    monitor-exit v0

    return-object v1

    .line 186
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 187
    monitor-exit v0

    return-object v1

    .line 189
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    .locals 3

    const-class v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 174
    monitor-exit v0

    return-object v1

    .line 176
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 177
    monitor-exit v0

    return-object v1

    .line 179
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addAppsToBrowserList([Ljava/lang/String;)V
    .locals 4

    .line 230
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 231
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addUidToVpnClientList(I)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearBrowserAppList()V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public getBrowserAppList()Ljava/util/HashSet;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    return-object p0
.end method

.method public getDnsCacheStatus()I
    .locals 0

    .line 250
    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageUid()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    return p0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public getRulesConfig()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getSocketConfig()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    return p0
.end method

.method public getVpnClientUidList()Ljava/util/HashSet;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    return-object p0
.end method

.method public isV4DnsConfigured()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    return p0
.end method

.method public isV4TcpConfigured()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    return p0
.end method

.method public isV4UdpConfigured()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    return p0
.end method

.method public isV6TcpConfigured()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    return p0
.end method

.method public isV6UdpConfigured()Z
    .locals 0

    .line 160
    iget-boolean p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    return p0
.end method

.method public removeUidFromVpnClientList(I)Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDnsCacheStatus(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageUid(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    return-void
.end method

.method public setRulesConfig(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    return-void
.end method

.method public setSocketConfig(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    return-void
.end method

.method public setV4DnsConfigured(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    return-void
.end method

.method public setV4TcpConfigured(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    return-void
.end method

.method public setV4UdpConfigured(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    return-void
.end method

.method public setV6DnsConfigured(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6DnsConfigured:Z

    return-void
.end method

.method public setV6TcpConfigured(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    return-void
.end method

.method public setV6UdpConfigured(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    return-void
.end method
