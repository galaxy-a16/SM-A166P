.class public Lcom/android/server/am/TrafficStateDatabaseController;
.super Ljava/lang/Object;
.source "TrafficStateDatabaseController.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETE_QUERY_VALUE:[Ljava/lang/String;

.field public static final ECHO_APP_SIG:Landroid/content/pm/Signature;

.field public static final Support_List:[Ljava/lang/String;

.field public static bandNumber:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static volatile mInsertDb:Z

.field public static volatile mInsertList:Z

.field public static mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field public static final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field public static mShouldReport:Z

.field public static mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public static mTelephonyCallback:Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;

.field public static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public static objTrafficStats:Ljava/util/List;

.field public static primaryBandwidth:Ljava/lang/String;

.field public static sAsyncHandler:Landroid/os/Handler;

.field public static sAsyncHandlerThread:Landroid/os/HandlerThread;

.field public static sInstance:Lcom/android/server/am/TrafficStateDatabaseController;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetbandNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->bandNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetobjTrafficStats()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputbandNumber(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->bandNumber:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smbandFromCP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->bandFromCP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdeleteValues()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->deleteValues()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetCellId()J
    .locals 2

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getCellId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smgetIPDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->getIPDNS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->getMD5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetRsrp()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getRsrp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smgetTechType()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sminsertValues()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->insertValues()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisWifiConnected()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smismInsertDb()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->ismInsertDb()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smismInsertList()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->ismInsertList()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetmInsertDb(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertDb(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsetmInsertList(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertList(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.tmobile.oem.echolocate.system.provider/trafficstats"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->DELETE_QUERY_VALUE:[Ljava/lang/String;

    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mShouldReport:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->sInstance:Lcom/android/server/am/TrafficStateDatabaseController;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertList:Z

    sput-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertDb:Z

    const-string v0, "-1"

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->bandNumber:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    const-string v0, "SM-S711U"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->Support_List:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/TrafficStateDatabaseController$1;

    invoke-direct {v0}, Lcom/android/server/am/TrafficStateDatabaseController$1;-><init>()V

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShouldReport()Z
    .locals 5

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->isModelSupported()Z

    move-result v0

    const-string v1, "TMB"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->isEchoAppSigPresent()Z

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/android/server/am/TrafficStateDatabaseController;->mShouldReport:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficState(): isModelSupported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTmoSalesCode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isEchoAppSigPresent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mShouldReport="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mShouldReport:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "isTmoSalesCode= false"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :goto_1
    sget-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mShouldReport:Z

    return v0
.end method

.method public static bandFromCP()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->invokeOemRilRequestRaw(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    sput-object v2, Lcom/android/server/am/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/android/server/am/TrafficStateDatabaseController;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/server/am/TrafficStateDatabaseController;->getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    aget-object v0, v1, v0

    sput-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->primaryBandwidth:Ljava/lang/String;

    return-object v0
.end method

.method public static deleteValues()V
    .locals 4

    const-string v0, "deleteValues()"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "consumed=?"

    sget-object v3, Lcom/android/server/am/TrafficStateDatabaseController;->DELETE_QUERY_VALUE:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete exception ocuurred: message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized disable()V
    .locals 4

    const-class v0, Lcom/android/server/am/TrafficStateDatabaseController;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->sInstance:Lcom/android/server/am/TrafficStateDatabaseController;

    const-string v1, "disable()"

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertList(Z)V

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertDb(Z)V

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->ShouldReport()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyCallback:Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "disable(): unregisterDnsCallback - removed"

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable(): unregisterDnsCallback - RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enable(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/android/server/am/TrafficStateDatabaseController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->sInstance:Lcom/android/server/am/TrafficStateDatabaseController;

    if-nez v1, :cond_1

    const-string v1, "TrafficStateDatabaseController enable"

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string v1, "com.tmobile.oem.echolocate.system.provider.trafficstats.TrafficStatsContentProvider.READ_TRAFFIC_STATS"

    const-string/jumbo v2, "readTrafficStateProvider"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string v1, "com.tmobile.oem.echolocate.system.provider.trafficstats.TrafficStatsContentProvider.WRITE_TRAFFIC_STATS"

    const-string v2, "WriteTrafficStateProvider"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance p0, Lcom/android/server/am/TrafficStateDatabaseController;

    invoke-direct {p0}, Lcom/android/server/am/TrafficStateDatabaseController;-><init>()V

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->sInstance:Lcom/android/server/am/TrafficStateDatabaseController;

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    new-instance p0, Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;

    invoke-direct {p0}, Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;-><init>()V

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyCallback:Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->ShouldReport()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "connmetrics"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const/4 v2, 0x4

    invoke-interface {p0, v2, v1}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "registerDnsCallback - added"

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerReceiverException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerDnsCallback - RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    sget-boolean v1, Lcom/android/server/am/TrafficStateDatabaseController;->mShouldReport:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyCallback:Lcom/android/server/am/TrafficStateDatabaseController$TrafficStatsTelephonyCallback;

    invoke-virtual {p0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_1

    :cond_1
    const-string p0, "already enabled."

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAsyncHandler()Landroid/os/Handler;
    .locals 4

    const-class v0, Lcom/android/server/am/TrafficStateDatabaseController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->sAsyncHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "sAsyncHandlerThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->sAsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/am/TrafficStateDatabaseController;->sAsyncHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->sAsyncHandler:Landroid/os/Handler;

    :cond_0
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->sAsyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCellId()J
    .locals 7

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellId(): techType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, -0x2

    if-nez v1, :cond_7

    const-string v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCellId(): info.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    :goto_0
    move-wide v3, v1

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v3, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v3, :cond_1

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    :goto_2
    int-to-long v3, v3

    goto :goto_1

    :cond_1
    instance-of v3, v5, Landroid/telephony/CellInfoNr;

    if-eqz v3, :cond_2

    check-cast v5, Landroid/telephony/CellInfoNr;

    invoke-virtual {v5}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentityNr;

    invoke-virtual {v3}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    instance-of v3, v5, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_3

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v3

    goto :goto_2

    :cond_3
    instance-of v3, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v3, :cond_4

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    goto :goto_2

    :cond_4
    const-string v3, "getCellId(): CellInfo is not one of GSM/LTE/WCDMA"

    invoke-static {v3}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-wide v2, v3

    goto :goto_3

    :cond_6
    const-string v0, "getCellId(): mTelephonyManager is null"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v0, "getCellId(): techType is not available"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    :goto_3
    return-wide v2
.end method

.method public static getCommandsToCp(I)[B
    .locals 4

    const-string v0, "getCommandToCp(): failed to close dos "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x92

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p0, "getCommandToCp(): "

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :goto_3
    throw p0
.end method

.method public static getIPDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AAAA"

    return-object p0

    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "A"

    return-object p0

    :cond_1
    const-string p0, "-1"

    return-object p0
.end method

.method public static getMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "MD5"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    const-string v0, "getMD5Hash: NoSuchAlgorithmException"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getResultsFromBytes(I[B)[Ljava/lang/String;
    .locals 3

    if-gtz p0, :cond_0

    const-string p0, "getResultsFromBytes(): length is less than or equal to zero!"

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getResultsFromBytes(): resultString="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    const-string p0, "\\|"

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length p1, p0

    if-ge v2, p1, :cond_3

    aget-object p1, p0, v2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "-2"

    aput-object p1, p0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static getRsrp()Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "-150"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRsrp(): objStrengthList.size= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "-999"

    move-object v3, v1

    move-object v4, v3

    :goto_0
    move-object v1, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellSignalStrength;

    instance-of v5, v1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v5, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/telephony/CellSignalStrengthLte;

    :cond_0
    instance-of v5, v1, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v5, :cond_1

    check-cast v1, Landroid/telephony/CellSignalStrengthNr;

    move-object v4, v1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRsrp(): cellSignalLte.rsrp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRsrp(): cellSignalNR.rsrp= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRsrp(): Default.rsrp= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, " getRsrp(): objStrengthList is null "

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, " getRsrp(): telephonyManager is null "

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getRsrp(): rsrp= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getTechType()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "-2"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "2G"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechType(): currNetwork= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    const-string v2, "-1"

    goto :goto_0

    :cond_0
    const-string v2, "NR"

    goto :goto_0

    :cond_1
    const-string v2, "LTE"

    goto :goto_0

    :cond_2
    const-string v2, "3G"

    :cond_3
    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_4
    const-string v0, "getTechType(): currServiceState is invalid"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "getTechType(): mTelephonyManager is null"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechType(): techType= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getTechTypeFromCp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "getCurrentNetworkType(): ret="

    if-eqz p0, :cond_2

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "cpTechType: ret="

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->getTechType()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public static insertValues()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    if-eqz v1, :cond_1

    const-string v1, "insertValues()"

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    sget-object v3, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/TrafficStateDatabaseController;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/am/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertList(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after Clear objTrafficStats.Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/TrafficStateDatabaseController;->objTrafficStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInsertList= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/TrafficStateDatabaseController;->ismInsertList()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertList(Z)V

    const-string v1, "insertValues(): List is null can\'t insert."

    invoke-static {v1}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->setmInsertList(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t insert exception ocuurred: message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static invokeOemRilRequestRaw(I)[Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: DefaultDataSubId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/TrafficStateDatabaseController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->getCommandsToCp(I)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeOemRilRequestRaw: resp= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/server/am/TrafficStateDatabaseController;->getResultsFromBytes(I[B)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw: msg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", resultFromCp= "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "invokeOemRilRequestRaw: mTelephonyManager= null & resultFromCp = null"

    invoke-static {p0}, Lcom/android/server/am/TrafficStateDatabaseController;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isEchoAppSigPresent()Z
    .locals 8

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.tmobile.echolocate"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_3

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    move v6, v1

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_1

    sget-object v7, Lcom/android/server/am/TrafficStateDatabaseController;->ECHO_APP_SIG:Landroid/content/pm/Signature;

    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_3

    :catch_0
    const-string v0, "isEchoAppSigPresent(): package is not installed"

    invoke-static {v0}, Lcom/android/server/am/TrafficStateDatabaseController;->log(Ljava/lang/String;)V

    :cond_3
    :goto_3
    return v1
.end method

.method public static isModelSupported()Z
    .locals 6

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->Support_List:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    const-string/jumbo v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static isWifiConnected()Z
    .locals 3

    sget-object v0, Lcom/android/server/am/TrafficStateDatabaseController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static ismInsertDb()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertDb:Z

    return v0
.end method

.method public static ismInsertList()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertList:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TrafficStateDatabaseController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setmInsertDb(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertDb:Z

    if-eq v0, p0, :cond_0

    sput-boolean p0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertDb:Z

    :cond_0
    return-void
.end method

.method public static setmInsertList(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertList:Z

    if-eq v0, p0, :cond_0

    sput-boolean p0, Lcom/android/server/am/TrafficStateDatabaseController;->mInsertList:Z

    :cond_0
    return-void
.end method
