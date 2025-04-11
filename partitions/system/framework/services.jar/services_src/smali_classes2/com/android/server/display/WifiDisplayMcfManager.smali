.class public Lcom/android/server/display/WifiDisplayMcfManager;
.super Ljava/lang/Object;
.source "WifiDisplayMcfManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WifiDisplayMcfManager"

.field public static final mScanFilterData:[B

.field public static final mScanFilterDataMask:[B


# instance fields
.field public final mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

.field public final mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

.field public mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mIsBounded:Z

.field public mIsIntentRegistered:Z

.field public mIsScanning:Z

.field public mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field public final mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field public mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field public final mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mService:Landroid/os/Messenger;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsBounded(Lcom/android/server/display/WifiDisplayMcfManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMcfHandler(Lcom/android/server/display/WifiDisplayMcfManager;)Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/display/WifiDisplayMcfManager;)Landroid/os/Messenger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsBounded(Lcom/android/server/display/WifiDisplayMcfManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Messenger;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbindMcfAdapter(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfAdapterScannerScanResult(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterScannerScanResult()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfAdapterServiceConnected(Lcom/android/server/display/WifiDisplayMcfManager;Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfAdapterServiceDisconnected(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfAdapterServiceDisconnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfManagerStatus(Lcom/android/server/display/WifiDisplayMcfManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfManagerStatus(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfServiceStateChanged(Lcom/android/server/display/WifiDisplayMcfManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfServiceStateChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRetryStartScanBleScanner(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleRetryStartScanBleScanner()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misNearbyScanningOn(Lcom/android/server/display/WifiDisplayMcfManager;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->isNearbyScanningOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munbindBleAdvertiserService(Lcom/android/server/display/WifiDisplayMcfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [B

    .line 53
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    new-array v0, v0, [B

    .line 57
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x4t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$1;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Landroid/content/ServiceConnection;

    .line 371
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$2;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 382
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$3;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 407
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$4;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 425
    new-instance v0, Lcom/android/server/display/WifiDisplayMcfManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayMcfManager$5;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    .line 96
    new-instance p1, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;-><init>(Lcom/android/server/display/WifiDisplayMcfManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 97
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-void
.end method


# virtual methods
.method public final bindBleAdvertiserService()V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindBleAdvertiserService, mIsBounded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.smartmirroring"

    const-string v2, "com.samsung.android.smartmirroring.ble.BleAdvertiserService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wfd_sec_mirroring_uuid"

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->getInitiatedMirroringUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public final bindMcfAdapter()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->isNearbyScanningOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->isAirPlaneModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string v1, "bindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    invoke-static {v0, v2}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 149
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 148
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->stopScanBleScanner()V

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getInitiatedMirroringUuid()Ljava/lang/String;
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getInitiatedMirroringUuid()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 115
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 116
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 115
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, v0}, Lcom/android/server/display/PersistentDataStore;->setInitiatedMirroringUuid(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final handleMcfAdapterScannerScanResult()V
    .locals 3

    .line 320
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindBleAdvertiserService()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 326
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 325
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final handleMcfAdapterServiceConnected(Lcom/samsung/android/mcf/McfAdapter;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    :cond_0
    :try_start_0
    const-string p1, ""

    .line 291
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_4

    .line 292
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 297
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    goto :goto_0

    .line 304
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "handleMcfAdapterServiceConnected mMcfAdapter null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    :goto_0
    sget-object p0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 311
    sget-object p1, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMcfAdapterServiceConnected Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final handleMcfAdapterServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/server/display/WifiDisplayMcfManager;->handleMcfManagerStatus(Z)V

    return-void
.end method

.method public final handleMcfManagerStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 335
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    :goto_0
    return-void
.end method

.method public final handleMcfServiceStateChanged(I)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    .line 274
    invoke-interface {v0, p1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    sget-object p1, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string v0, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->initialize()V

    goto :goto_0

    .line 278
    :cond_0
    sget-object p1, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string v0, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to unbind"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindMcfAdapter()V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->unbindBleAdvertiserService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleRetryStartScanBleScanner()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 263
    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->tryStartScanBleScanner()V

    goto :goto_0

    .line 266
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 267
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 266
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->registerIntent()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->bindMcfAdapter()V

    return-void
.end method

.method public final isAirPlaneModeOn()Z
    .locals 2

    .line 340
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isNearbyScanningOn()Z
    .locals 2

    const/4 v0, 0x1

    .line 346
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "nearby_scanning_enabled"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public final registerIntent()V
    .locals 3

    .line 124
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.nearbyscanning"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsIntentRegistered:Z

    :cond_0
    return-void
.end method

.method public final retryStartScanBleScanner()V
    .locals 3

    .line 250
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    .line 253
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 252
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final stopScanBleScanner()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    :cond_0
    return-void
.end method

.method public final tryStartScanBleScanner()V
    .locals 9

    .line 207
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    const/4 v1, 0x0

    .line 211
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 212
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->getRememberedInitiatedDevices()Ljava/util/ArrayList;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 219
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    sget-object v5, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tryStartScanBleScanner : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v5, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v5}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    .line 224
    :try_start_0
    sget-object v6, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterData:[B

    sget-object v7, Lcom/android/server/display/WifiDisplayMcfManager;->mScanFilterDataMask:[B

    const/16 v8, 0x75

    invoke-virtual {v5, v8, v6, v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 225
    invoke-virtual {v5, v4}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 226
    invoke-virtual {v5}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v4

    .line 227
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 230
    sget-object v5, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tryStartScanBleScanner failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    .line 236
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryStartScanBleScanner startScan, ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsScanning:Z

    if-nez v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->stopScanBleScanner()V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->retryStartScanBleScanner()V

    goto :goto_1

    .line 244
    :cond_1
    sget-object p0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string v0, "BleScanner is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final unbindBleAdvertiserService()V
    .locals 4

    .line 188
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mService:Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 194
    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mIsBounded:Z

    :cond_0
    return-void
.end method

.method public final unbindMcfAdapter()V
    .locals 2

    .line 162
    sget-object v0, Lcom/android/server/display/WifiDisplayMcfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfHandler:Lcom/android/server/display/WifiDisplayMcfManager$McfHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayMcfManager;->stopScanBleScanner()V

    .line 167
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    .line 169
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    .line 174
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    :cond_1
    return-void
.end method
