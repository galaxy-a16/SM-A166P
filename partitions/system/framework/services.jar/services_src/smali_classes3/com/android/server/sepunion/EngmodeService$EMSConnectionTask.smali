.class public Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;
.super Ljava/lang/Object;
.source "EngmodeService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public static bridge synthetic -$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[B)[B
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->post([B)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final post([B)[B
    .locals 3

    const/4 v0, 0x0

    .line 386
    :try_start_0
    new-instance v1, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const-string v2, "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;-><init>(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "tokenreq"

    .line 387
    invoke-virtual {v1, p0, p1}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->addByteArrayPart(Ljava/lang/String;[B)V

    .line 388
    invoke-virtual {v1}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->finish()Ljava/util/ArrayList;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 391
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 392
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p0

    .line 397
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method
