.class public Lcom/samsung/android/battauthmanager/WpcAuthenticator;
.super Ljava/lang/Object;
.source "WpcAuthenticator.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public certChainHash:[B

.field public currentStatus:I

.field public final mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

.field public final mContext:Landroid/content/Context;

.field public mIsAttachedAuthPad:Z

.field public final mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

.field public matchedDigestFileName:Ljava/lang/String;

.field public productPublicKey:[B

.field public requestChallenge:[B


# direct methods
.method public static synthetic $r8$lambda$FkB7IauqwNnYm_YNbhnu6SrygdI(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->lambda$getDigestFileNames$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->currentStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthWakeLock(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBattAuthHelper(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/BattAuthHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAttachedAuthPad(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mIsAttachedAuthPad:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWpcAuthHandler(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputcurrentStatus(Lcom/samsung/android/battauthmanager/WpcAuthenticator;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->currentStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsAttachedAuthPad(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mIsAttachedAuthPad:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAndCheckDigests(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getAndCheckDigests()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAndVerifyCertChain(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getAndVerifyCertChain()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetAndVerifyChallenge(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getAndVerifyChallenge()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestCertChain(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestCertChain()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestChallengeAuth(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallengeAuth()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrequestDigests(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestDigests()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->setAuthPass(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smreadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BattAuthManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mIsAttachedAuthPad:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    iput v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->currentStatus:I

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->matchedDigestFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-direct {v1}, Lcom/samsung/android/battauthmanager/BattAuthHelper;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;-><init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;-><init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)V

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    sget-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public static getSha256Hash([B)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v0
.end method

.method public static synthetic lambda$getDigestFileNames$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string/jumbo p0, "qi_digest_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method


# virtual methods
.method public final byteArrayToString([B)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "len(%d), "

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02X "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "null"

    return-object p0
.end method

.method public final deleteFile(Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAndCheckDigests()Z
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataRead_batt()[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndCheckDigests, digest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v0

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndCheckDigests, wrong length of digest : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getDigestFileNames()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "getAndCheckDigests, no digest dir"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAndCheckDigests, cached "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " file(s)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, v2

    move v3, v4

    move v5, v3

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v5, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/efs/Battery/qi_digests/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->readBytes(Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_6

    array-length v7, v6

    const/16 v8, 0x20

    if-ge v7, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    move v7, v4

    :goto_1
    if-ge v7, v8, :cond_4

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, v0, v9

    aget-byte v10, v6, v7

    if-eq v9, v10, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_5

    iput-object v5, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->matchedDigestFileName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndCheckDigests, matched : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    array-length v1, v6

    invoke-static {v6, v8, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndCheckDigests, certChainHash : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    invoke-virtual {p0, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndCheckDigests, productPublicKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    invoke-virtual {p0, v2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto/16 :goto_0

    :cond_6
    :goto_3
    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndCheckDigests, can not read : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    :goto_4
    return v5
.end method

.method public final getAndVerifyCertChain()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataRead_batt()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAndVerifyCertChain, certchain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v0

    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getSha256Hash([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v3, v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->verifyWpcCertChain([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    if-nez v0, :cond_1

    const-string p0, "getAndVerifyCertChain, fail to verify cert chain"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAndVerifyCertChain, verified, pubKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    invoke-virtual {p0, v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    const-string v0, "getAndVerifyCertChain, certChain is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final getAndVerifyChallenge()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataRead_batt()[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    const-string v0, "getAndVerifyChallenge, challengeAuth is invalid"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAndVerifyChallenge, challengeAuth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    iget-object v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    iget-object v5, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    invoke-virtual {v3, v4, v5, p0, v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->verifyChallengeAuth([B[B[B[B)I

    move-result p0

    if-gez p0, :cond_1

    const-string p0, "getAndVerifyChallenge, fail to verify challenge"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "getAndVerifyChallenge, success to verify challenge"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final getDigestFileNames()[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/Battery/qi_digests/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1fd

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->setPermission(Ljava/lang/String;I)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final readBytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int p1, v2

    sget-object v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readBytes, size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, p1, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v2, p1, :cond_0

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    move-object v0, v1

    :goto_3
    sget-object p1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readBytes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    throw p0
.end method

.method public removeDigests()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getDigestFileNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/efs/Battery/qi_digests/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->deleteFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeDigests, clear digest(s), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final requestCertChain()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeGetCertReq(IIIIII)[B

    move-result-object v0

    sget-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCertChain, reqMsg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataWrite_batt([B)I

    move-result p0

    array-length v0, v0

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "requestCertChain, fail to write req of cert chain"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final requestChallengeAuth()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeChallengeReq(II)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestChallengeAuth, reqMsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    invoke-virtual {p0, v4}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    iget-object v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    invoke-virtual {v3, v4}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataWrite_batt([B)I

    move-result v3

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    array-length p0, p0

    if-eq v3, p0, :cond_0

    const-string/jumbo p0, "requestChallengeAuth, fail to write req of challenge"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v2
.end method

.method public final requestDigests()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->makeGetDigestsReq(BI)[B

    move-result-object v0

    sget-object v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDigests, reqMsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataWrite_batt([B)I

    move-result p0

    array-length v0, v0

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "requestDigests, fail to write req of digests"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public final saveCertHashAndPubkeyToFile()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/efs/Battery/qi_digests/qi_digest_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->matchedDigestFileName:Ljava/lang/String;

    const-string v2, "/efs/Battery/qi_digests/"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->matchedDigestFileName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->deleteFile(Ljava/lang/String;)Z

    iput-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->matchedDigestFileName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->getDigestFileNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    array-length v5, v1

    const/16 v6, 0xf

    if-lt v5, v6, :cond_1

    array-length v5, v1

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    array-length v3, v2

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-byte v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/io/FileOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget-byte v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_5

    :catch_0
    move-exception v2

    move-object v3, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception v2

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "saveCertHashAndPubkeyToFile, fail to save"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    const/16 v1, 0x1b0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->setPermission(Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveCertHashAndPubkeyToFile, save : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_5
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    throw p0
.end method

.method public final setAuthPass(Z)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    new-array v3, v0, [B

    const/4 v4, 0x2

    aput-byte v4, v3, v2

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataWrite_batt([B)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->saveCertHashAndPubkeyToFile()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-virtual {p0, v3}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->ioctl_longDataWrite_batt([B)I

    move-result v1

    :goto_0
    if-eq v1, v0, :cond_1

    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setAuthPass, fail to write req of challenge"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    sget-object p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthPass, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setPermission(Ljava/lang/String;I)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const/16 p0, 0x3e8

    invoke-static {p1, p0, p0}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/system/ErrnoException;->printStackTrace()V

    :goto_0
    return-void
.end method
