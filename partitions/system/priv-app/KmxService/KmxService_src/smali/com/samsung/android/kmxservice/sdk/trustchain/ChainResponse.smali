.class public final enum Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_COUNTRY_NOT_SUPPORTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_FABRIC_ID_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_ID_NOT_EXIST:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_NOT_IMPLEMENTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SA_LATEST_INFO_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SA_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SA_NOT_SIGNED_IN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SERVER_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SERVER_NOT_ACTIVATED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_SOLB_SYNC:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_TRANSACTION_ALREADY_WORKING:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FAIL_TRANSACTION_WRITE_EMPTY_VALUE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum FINISHED_VOID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum NOT_VALID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

.field public static final enum SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;


# instance fields
.field private final responseCode:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FINISHED_VOID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_NOT_IMPLEMENTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_SIGNED_IN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_LATEST_INFO_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_FABRIC_ID_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_COUNTRY_NOT_SUPPORTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_NOT_ACTIVATED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION_ALREADY_WORKING:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION_WRITE_EMPTY_VALUE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_ID_NOT_EXIST:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_SYNC:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->NOT_VALID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const-string v1, "FINISHED_VOID"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FINISHED_VOID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x2

    const/16 v2, 0x64

    const-string v4, "FAIL_GENERAL"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x3

    const/16 v2, 0x65

    const-string v4, "FAIL_EXCEPTION"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x4

    const/16 v2, 0x66

    const-string v4, "FAIL_NOT_IMPLEMENTED"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_NOT_IMPLEMENTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x5

    const/16 v2, 0x6e

    const-string v4, "FAIL_SA_NOT_SIGNED_IN"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_SIGNED_IN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x6

    const/16 v2, 0x6f

    const-string v4, "FAIL_SA_NOT_AVAILABLE"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/4 v1, 0x7

    const/16 v2, 0x70

    const-string v4, "FAIL_SA_LATEST_INFO_NOT_AVAILABLE"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_LATEST_INFO_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0x8

    const/16 v2, 0x71

    const-string v4, "FAIL_FABRIC_ID_CANNOT_ACCESS"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_FABRIC_ID_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0x9

    const/16 v2, 0x96

    const-string v4, "FAIL_COUNTRY_NOT_SUPPORTED"

    invoke-direct {v0, v4, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_COUNTRY_NOT_SUPPORTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const-string v1, "FAIL_SERVER_NOT_ACTIVATED"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_NOT_ACTIVATED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0xb

    const/16 v2, 0xd2

    const-string v3, "FAIL_SERVER_CANNOT_ACCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0xc

    const/16 v2, 0x12c

    const-string v3, "FAIL_TRANSACTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0xd

    const/16 v2, 0x12d

    const-string v3, "FAIL_TRANSACTION_ALREADY_WORKING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION_ALREADY_WORKING:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0xe

    const/16 v2, 0x136

    const-string v3, "FAIL_TRANSACTION_WRITE_EMPTY_VALUE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION_WRITE_EMPTY_VALUE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0xf

    const/16 v2, 0x190

    const-string v3, "FAIL_ID_NOT_EXIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_ID_NOT_EXIST:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0x10

    const/16 v2, 0x1f4

    const-string v3, "FAIL_SOLB_CANNOT_START_PEER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0x11

    const/16 v2, 0x1f5

    const-string v3, "FAIL_SOLB_SYNC"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_SYNC:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    const/16 v1, 0x12

    const/16 v2, 0x2710

    const-string v3, "NOT_VALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->NOT_VALID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->$values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->$VALUES:[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

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

    iput p3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->responseCode:I

    return-void
.end method

.method public static fromValue(I)Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;
    .locals 5

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->NOT_VALID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    return-object p0
.end method

.method public static isFinished(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FINISHED_VOID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSucceed(I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FINISHED_VOID:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->$VALUES:[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->responseCode:I

    return p0
.end method
