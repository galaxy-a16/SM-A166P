.class public final Lcom/android/server/PACMService$PACServiceSocketThread;
.super Ljava/lang/Object;
.source "PACMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public buffer:[B

.field public mLocalServerSocket:Landroid/net/LocalServerSocket;

.field public mLocalSocket:Landroid/net/LocalSocket;

.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/PACMService;Lcom/android/server/PACMService$PACServiceSocketThread-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/PACMService$PACServiceSocketThread;-><init>(Lcom/android/server/PACMService;)V

    return-void
.end method


# virtual methods
.method public BigEndianToLittleEndian([B)[B
    .locals 1

    .line 267
    array-length p0, p1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 268
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 269
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 271
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public ByteToInt([B)I
    .locals 0

    .line 264
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public final checkAtdDdex()I
    .locals 4

    .line 342
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "PACMSOCKET"

    if-nez p0, :cond_0

    const-string p0, "atd_ddex is null !!"

    .line 344
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 347
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p0, "ATD"

    .line 348
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "This cmd is from ATD"

    .line 349
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "DDEX"

    .line 352
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "This cmd is from DDEX"

    .line 353
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public final checkClassStatus(I)I
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmCache(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "PACMSOCKET"

    if-eqz v0, :cond_0

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mode("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is already cached"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const-string/jumbo p0, "mWakeLock is null"

    .line 290
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 296
    :cond_2
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v5, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v5}, Lcom/android/server/PACMService;->-$$Nest$fgetmContext(Lcom/android/server/PACMService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkEmState()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call getStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v0

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStatus ret : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v1}, Lcom/android/server/PACMService;->-$$Nest$fgetmCache(Lcom/android/server/PACMService;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    move v1, v0

    goto :goto_0

    .line 306
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tstate : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v1}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", em connected : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p1}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 311
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmWakeLock(Lcom/android/server/PACMService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    :goto_1
    return v1
.end method

.method public final checkEmState()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmEmTokenState(Lcom/android/server/PACMService;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final executeCommand(I)[B
    .locals 10

    .line 385
    iget-object v0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v0}, Lcom/android/server/PACMService;->-$$Nest$fgetmLock(Lcom/android/server/PACMService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 392
    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v2, "PACMSOCKET"

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START - executeCommand :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :try_start_1
    iget-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {p1}, Lcom/android/server/PACMService$PAC_Packet;->getVersion([B)I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const-string p0, "PACMSOCKET"

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version is abnormal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    .line 406
    :cond_1
    :try_start_3
    iget-object p1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {p1}, Lcom/android/server/PACMService$PAC_Packet;->getCommand([B)I

    move-result p1

    const-string v4, "PACMSOCKET"

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/16 v5, 0xa1

    if-eqz p1, :cond_a

    if-eq p1, v2, :cond_2

    const-string v6, "PACMSOCKET"

    .line 502
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v6, -0xffffffd

    goto/16 :goto_5

    .line 429
    :cond_2
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v6

    const-string v7, "PACMSOCKET"

    const-string v8, "PAC_Packet.PAC_PACKET_CMD_AT_CMD_CHECK:"

    .line 430
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d

    .line 433
    new-instance v1, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 434
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "PACMSOCKET"

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {v6}, Lcom/android/server/PACMService;->-$$Nest$fgetmAtMap(Lcom/android/server/PACMService;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->getCommand(Ljava/util/LinkedHashMap;Ljava/lang/String;)Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    move-result-object v6

    .line 440
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isAutoBlocker()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->hasAutoBlockerAttribute(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v6, "PACMSOCKET"

    const-string v7, "AT command is blocked by Auto Blocker"

    .line 441
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xd0

    goto/16 :goto_5

    :cond_3
    const/16 v7, 0xaf

    if-nez v6, :cond_5

    .line 448
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isDevAndNoship()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isForceTestUser()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PACMSOCKET"

    const-string v7, "This command is unregistered. But it is temporarily allowed."

    .line 449
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto/16 :goto_5

    :cond_4
    :goto_0
    move v6, v7

    goto/16 :goto_5

    .line 457
    :cond_5
    invoke-virtual {v6}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getType()I

    move-result v8

    const/16 v9, 0x1c

    packed-switch v8, :pswitch_data_0

    const-string v6, "PACMSOCKET"

    goto :goto_2

    :pswitch_0
    const-string v6, "PACMSOCKET"

    const-string v7, "This Command is PROTECTED_AT_COMMAND"

    .line 460
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {p0, v9}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v6

    if-ne v2, v6, :cond_6

    const-string v6, "PACMSOCKET"

    const-string v7, "This Command is ALLOWED_PROTECTED_AT_COMMAND"

    .line 462
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xb0

    goto :goto_3

    :cond_6
    const-string v6, "PACMSOCKET"

    const-string v7, "This Command is NOT_ALLOWED_PROTECTED_AT_COMMAND"

    .line 465
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xb1

    goto :goto_3

    :pswitch_1
    const-string v6, "PACMSOCKET"

    const-string v7, "This Command is CP_AT_COMMAND"

    .line 484
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xa2

    goto :goto_3

    :pswitch_2
    const-string v7, "PACMSOCKET"

    const-string v8, "This Command is USER_OPEN_AT_COMMAND"

    .line 470
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0, v9}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v7

    if-eq v2, v7, :cond_8

    .line 473
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isSecureLock()Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkAtdDdex()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkAttribute(Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;ZI)I

    move-result v7

    const/16 v6, 0xc3

    if-ne v7, v6, :cond_7

    .line 474
    sget-boolean v6, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    if-ne v6, v2, :cond_7

    const-string v6, "PACMSOCKET"

    const-string v7, "This Command is now open becauese there is Galaxy Diag Tool"

    .line 475
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-eq v7, v5, :cond_9

    const-string v4, "PACMSOCKET"

    const-string v6, "This Command is not USER_OPEN_AT_COMMAND because of attribute"

    .line 478
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_3

    :cond_8
    :goto_1
    move v7, v5

    goto :goto_3

    :goto_2
    const-string v8, "This Command is not registered"

    .line 488
    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    if-eq v7, v5, :cond_4

    .line 494
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isDevAndNoship()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isForceTestUser()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PACMSOCKET"

    const-string v7, "This command is be temporarily allowed. but it will be blocked"

    .line 495
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    goto/16 :goto_0

    .line 412
    :cond_a
    iget-object v6, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-static {v6, v4}, Lcom/android/server/PACMService$PAC_Packet;->getItem([BI)[B

    move-result-object v6

    if-eqz v6, :cond_c

    .line 415
    invoke-virtual {p0, v6}, Lcom/android/server/PACMService$PACServiceSocketThread;->BigEndianToLittleEndian([B)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/PACMService$PACServiceSocketThread;->ByteToInt([B)I

    move-result v6

    const-string v7, "PACMSOCKET"

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parsed_mode("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v6, :cond_b

    const-string v7, "PACMSOCKET"

    .line 418
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse mode("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 421
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/server/PACMService$PACServiceSocketThread;->checkClassStatus(I)I

    move-result v6

    goto :goto_5

    :cond_c
    const-string v6, "PACMSOCKET"

    const-string v7, "Failed to get mode number"

    .line 424
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    move v6, v4

    .line 508
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/PACMService$PACServiceSocketThread;->isAutoBlocker()Z

    move-result p0

    if-nez p0, :cond_11

    .line 509
    invoke-static {}, Lcom/android/server/PACMService;->-$$Nest$sfgetmIsJDMDevice()Z

    move-result p0

    if-eqz p0, :cond_10

    if-nez v4, :cond_f

    .line 511
    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->isJDMProtectedCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_e

    const-string p0, "PACMSOCKET"

    const-string v4, "This command is JDM protected command"

    .line 512
    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const-string p0, "PACMSOCKET"

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "open "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in PACM because of JDM device"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 518
    :cond_f
    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->isJDMOpenCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_10

    const-string p0, "PACMSOCKET"

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "open "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in PACM because of JDM open command"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move v6, v5

    .line 525
    :cond_10
    :goto_7
    invoke-static {v1}, Lcom/samsung/android/service/ProtectedATCommand/PACMClassifier;->checkSpecialCommand(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v2, :cond_11

    const-string p0, "PACMSOCKET"

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in PACM because of Special command"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    move v5, v6

    :goto_8
    const-string p0, "PACMSOCKET"

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END - executeCommand :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {v2}, Lcom/android/server/PACMService$PAC_Packet;->initPacket(I)[B

    move-result-object v3

    if-eqz v3, :cond_12

    .line 534
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {v3, p0, p1}, Lcom/android/server/PACMService$PAC_Packet;->putItem([BLjava/lang/Object;I)[B

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 537
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    :cond_12
    :goto_9
    monitor-exit v0

    return-object v3

    :cond_13
    :goto_a
    const-string p0, "PACMSOCKET"

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer is abnormal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    .line 541
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isAutoBlocker()Z
    .locals 2

    .line 375
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmContext(Lcom/android/server/PACMService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "rampart_blocked_at_cmd"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "PACMSOCKET"

    const-string v1, "Auto Blocker is on"

    .line 377
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :cond_0
    return v1
.end method

.method public final isDevAndNoship()Z
    .locals 1

    const-string/jumbo p0, "ro.boot.em.status"

    const-string v0, "0x1"

    .line 329
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x0"

    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0x2"

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isForceTestUser()Z
    .locals 2

    const-string/jumbo p0, "security.pacm.test"

    const-string v0, "false"

    .line 319
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "PACMSOCKET"

    const-string v1, "[AT command Test Mode] Simulate user device"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public final isSecureLock()Z
    .locals 3

    const-string v0, "PACMSOCKET"

    const/4 v1, 0x0

    .line 362
    :try_start_0
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmContext(Lcom/android/server/PACMService;)Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 363
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    .line 364
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secureLock : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Failed to get secureLock"

    .line 366
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public run()V
    .locals 5

    const-string v0, "PACMSOCKET"

    .line 547
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    .line 548
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "/dev/socket/pacm/pacmservice"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 549
    new-instance v1, Landroid/net/LocalServerSocket;

    iget-object v2, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    const/16 v1, 0x200

    new-array v1, v1, [B

    .line 550
    iput-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_7

    .line 567
    :try_start_1
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    :try_start_2
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 569
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v4, "[v.1] Ready to connect."

    .line 571
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_1

    .line 574
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    .line 576
    iget-object v4, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->buffer:[B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 577
    invoke-virtual {p0, v4}, Lcom/android/server/PACMService$PACServiceSocketThread;->executeCommand(I)[B

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ret is null"

    .line 579
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .line 580
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 582
    :cond_0
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_1
    const-string v4, "Disconnected."

    .line 586
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    .line 587
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_3
    :try_start_7
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 566
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_9
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    :try_start_b
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_c
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception v1

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket connection may be closed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-eqz v1, :cond_8

    .line 594
    :try_start_e
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    const-string v2, "Failed to close server socket."

    .line 597
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 602
    :cond_8
    :goto_5
    :try_start_f
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_9

    .line 603
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    const-string v1, "Failed to close mLocalSocket socket."

    .line 606
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_6
    const-string p0, "Socket thread has been stopped."

    .line 610
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v1

    const-string/jumbo v2, "mLocalSocket.start Open"

    .line 552
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 555
    :try_start_10
    iget-object p0, p0, Lcom/android/server/PACMService$PACServiceSocketThread;->mLocalSocket:Landroid/net/LocalSocket;

    if-eqz p0, :cond_a

    .line 556
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto :goto_7

    :catch_4
    move-exception p0

    const-string/jumbo v1, "mLocalSocket.start close"

    .line 559
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    return-void
.end method
