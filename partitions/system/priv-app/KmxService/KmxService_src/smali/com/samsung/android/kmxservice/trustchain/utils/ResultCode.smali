.class public final enum Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH_KMXID_CHANGED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH_PREREQUISITE_FABRICID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH_PREREQUISITE_LATEST_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH_PREREQUISITE_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH_SERVER_AUTH_TOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_AUTH_SERVER_CHALLENGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_BB_PREREQUISITE_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_BB_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_BB_REQUEST:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_BB_THRESHOLD_ALREADY_SATISFIED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_KEYSTORE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_KEYSTORE_INVALID_CERT_CHAIN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MEM_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MEM_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MEM_PREREQUISITE_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE_CONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE_DISCONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE_SUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_MESSAGE_UNSUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_PRECONDITION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_SOLB_EMPTY_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_SOLB_NOT_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_SOLB_NO_SUCH_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum FAIL_UTILS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum NOT_VALID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum SUCCESS_BB_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum SUCCESS_BB_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum SUCCESS_MEM_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum SUCCESS_MEM_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

.field public static final enum SUCCESS_SOLB_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3

    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_MEM_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_MEM_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_SOLB_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_PRECONDITION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_LATEST_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_FABRICID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_SERVER_CHALLENGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_SERVER_AUTH_TOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_KMXID_CHANGED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_PREREQUISITE_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_REQUEST:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_PREREQUISITE_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_THRESHOLD_ALREADY_SATISFIED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_CONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_DISCONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_SUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_UNSUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_KEYSTORE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_KEYSTORE_INVALID_CERT_CHAIN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EMPTY_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NOT_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NO_SUCH_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_UTILS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->NOT_VALID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, "SUCCESS_MEM_AVAILABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_MEM_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, "SUCCESS_MEM_ALREADY_REGISTERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_MEM_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, "SUCCESS_BB_ALREADY_REGISTERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, "SUCCESS_BB_NOT_REGISTERED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, "SUCCESS_SOLB_NEED_SYNC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_SOLB_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v1, 0x6

    const/16 v2, 0xc8

    const-string v3, "FAIL"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v1, 0x7

    const/16 v2, 0xc9

    const-string v3, "FAIL_PRECONDITION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_PRECONDITION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x8

    const/16 v2, 0xca

    const-string v3, "FAIL_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x9

    const/16 v2, 0x12c

    const-string v3, "FAIL_AUTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0xa

    const/16 v2, 0x12d

    const-string v3, "FAIL_AUTH_PREREQUISITE_SATOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0xb

    const/16 v2, 0x12e

    const-string v3, "FAIL_AUTH_PREREQUISITE_LATEST_SATOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_LATEST_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0xc

    const/16 v2, 0x12f

    const-string v3, "FAIL_AUTH_PREREQUISITE_FABRICID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_FABRICID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0xd

    const/16 v2, 0x136

    const-string v3, "FAIL_AUTH_SERVER_CHALLENGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_SERVER_CHALLENGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0xe

    const/16 v2, 0x140

    const-string v3, "FAIL_AUTH_SERVER_AUTH_TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_SERVER_AUTH_TOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0xf

    const/16 v2, 0x141

    const-string v3, "FAIL_AUTH_KMXID_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_KMXID_CHANGED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x10

    const/16 v2, 0x190

    const-string v3, "FAIL_MEMBERSHIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x11

    const/16 v2, 0x191

    const-string v3, "FAIL_MEM_PREREQUISITE_NOT_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x12

    const/16 v2, 0x192

    const-string v3, "FAIL_MEM_PREREQUISITE_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_PREREQUISITE_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x13

    const/16 v2, 0x19a

    const-string v3, "FAIL_MEM_SERVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x14

    const/16 v2, 0x19b

    const-string v3, "FAIL_MEM_NOT_AVAILABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x15

    const/16 v2, 0x19c

    const-string v3, "FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x16

    const/16 v2, 0x1f4

    const-string v3, "FAIL_BB_REQUEST"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_REQUEST:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x17

    const/16 v2, 0x1f5

    const-string v3, "FAIL_BB_PREREQUISITE_NOT_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x18

    const/16 v2, 0x1f6

    const-string v3, "FAIL_BB_PREREQUISITE_ALREADY_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_PREREQUISITE_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x19

    const/16 v2, 0x1fe

    const-string v3, "FAIL_BB_SERVER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x1a

    const/16 v2, 0x1ff

    const-string v3, "FAIL_BB_THRESHOLD_ALREADY_SATISFIED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_THRESHOLD_ALREADY_SATISFIED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x1b

    const/16 v2, 0x258

    const-string v3, "FAIL_MESSAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x1c

    const/16 v2, 0x259

    const-string v3, "FAIL_MESSAGE_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x1d

    const/16 v2, 0x25a

    const-string v3, "FAIL_MESSAGE_PREREQUISITE_NOT_REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x1e

    const/16 v2, 0x262

    const-string v3, "FAIL_MESSAGE_CONNECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_CONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x1f

    const/16 v2, 0x26c

    const-string v3, "FAIL_MESSAGE_DISCONNECT"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_DISCONNECT:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x20

    const/16 v2, 0x276

    const-string v3, "FAIL_MESSAGE_SUBSCRIBE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_SUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x21

    const/16 v2, 0x280

    const-string v3, "FAIL_MESSAGE_UNSUBSCRIBE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MESSAGE_UNSUBSCRIBE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x22

    const/16 v2, 0x2bc

    const-string v3, "FAIL_KEYSTORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_KEYSTORE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x23

    const/16 v2, 0x2bd

    const-string v3, "FAIL_KEYSTORE_INVALID_CERT_CHAIN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_KEYSTORE_INVALID_CERT_CHAIN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x24

    const/16 v2, 0x320

    const-string v3, "FAIL_SOLB"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x25

    const/16 v2, 0x32a

    const-string v3, "FAIL_SOLB_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x26

    const/16 v2, 0x33e

    const-string v3, "FAIL_SOLB_EMPTY_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EMPTY_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x27

    const/16 v2, 0x33f

    const-string v3, "FAIL_SOLB_NOT_NEED_SYNC"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NOT_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x28

    const/16 v2, 0x340

    const-string v3, "FAIL_SOLB_NO_SUCH_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NO_SUCH_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x29

    const/16 v2, 0x341

    const-string v3, "FAIL_SOLB_CANNOT_START_PEER"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x2a

    const/16 v2, 0x384

    const-string v3, "FAIL_UTILS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_UTILS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/16 v1, 0x2b

    const/16 v2, 0x2710

    const-string v3, "NOT_VALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->NOT_VALID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->$values()[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

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

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->values()[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->NOT_VALID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private isFailed()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->value:I

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z
    .locals 0

    .line 2
    if-eqz p0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSucceed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->value:I

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->value:I

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->value:I

    return p0
.end method
