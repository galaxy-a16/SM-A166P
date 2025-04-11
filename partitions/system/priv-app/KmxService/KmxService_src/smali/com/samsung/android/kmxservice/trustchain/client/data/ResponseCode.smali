.class public final enum Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_ACCEPTED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_FORBIDDEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_INTERNAL_SERVER_ERROR:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_INVALID_TOKEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_OK:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

.field public static final enum HTTP_UNAUTHORIZED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_OK:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_ACCEPTED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_UNAUTHORIZED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_FORBIDDEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_INTERNAL_SERVER_ERROR:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_INVALID_TOKEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "HTTP_OK"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_OK:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x1

    const/16 v2, 0xc9

    const-string v3, "HTTP_CREATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x2

    const/16 v2, 0xca

    const-string v3, "HTTP_ACCEPTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_ACCEPTED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x3

    const/16 v2, 0xcc

    const-string v3, "HTTP_NO_CONTENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x4

    const/16 v2, 0x190

    const-string v3, "HTTP_BAD_REQUEST"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x5

    const/16 v2, 0x191

    const-string v3, "HTTP_UNAUTHORIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_UNAUTHORIZED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x6

    const/16 v2, 0x193

    const-string v3, "HTTP_FORBIDDEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_FORBIDDEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/4 v1, 0x7

    const/16 v2, 0x194

    const-string v3, "HTTP_NOT_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/16 v1, 0x8

    const/16 v2, 0x199

    const-string v3, "HTTP_ALREADY_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/16 v1, 0x9

    const/16 v2, 0x1f4

    const-string v3, "HTTP_INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_INTERNAL_SERVER_ERROR:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    const/16 v1, 0xa

    const/16 v2, 0x3e8

    const-string v3, "HTTP_INVALID_TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_INVALID_TOKEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->$values()[Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->value:I

    return-void
.end method

.method public static getLogStr(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getResponseStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResponseStr(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_7

    const/16 v0, 0x199

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x190

    if-eq p0, v0, :cond_3

    const/16 v0, 0x191

    if-eq p0, v0, :cond_2

    const/16 v0, 0x193

    if-eq p0, v0, :cond_1

    const/16 v0, 0x194

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "HTTP_UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string p0, "HTTP_ACCEPTED"

    goto :goto_0

    :pswitch_1
    const-string p0, "HTTP_CREATED"

    goto :goto_0

    :pswitch_2
    const-string p0, "HTTP_OK"

    goto :goto_0

    :cond_0
    const-string p0, "HTTP_NOT_FOUND"

    goto :goto_0

    :cond_1
    const-string p0, "HTTP_FORBIDDEN"

    goto :goto_0

    :cond_2
    const-string p0, "HTTP_UNAUTHORIZED"

    goto :goto_0

    :cond_3
    const-string p0, "HTTP_BAD_REQUEST"

    goto :goto_0

    :cond_4
    const-string p0, "HTTP_INVALID_TOKEN"

    goto :goto_0

    :cond_5
    const-string p0, "HTTP_INTERNAL_SERVER_ERROR"

    goto :goto_0

    :cond_6
    const-string p0, "HTTP_ALREADY_EXIST"

    goto :goto_0

    :cond_7
    const-string p0, "HTTP_NO_CONTENT"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSuccess(I)Z
    .locals 1

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->value:I

    return p0
.end method
