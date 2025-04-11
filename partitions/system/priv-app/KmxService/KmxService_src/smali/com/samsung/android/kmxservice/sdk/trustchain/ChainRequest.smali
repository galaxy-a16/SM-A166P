.class public final enum Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum DEACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum DESTROY_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum DETECT_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum DETECT_MEMBER_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum DETECT_TRUSTED_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum GET_DASHBOARD_INFO_SELF:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum GET_FABRIC_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum GET_MEMBER_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum GET_ST_MEMBERS_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum GET_ST_MEMBER_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum READ_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum SIGNED_IN_SA:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum SYNC_CHAIN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

.field public static final enum WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;


# instance fields
.field private final responseCode:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DEACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DESTROY_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->READ_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_FABRIC_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_MEMBER_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_TRUSTED_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_MEMBER_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_DASHBOARD_INFO_SELF:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SIGNED_IN_SA:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SYNC_CHAIN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_ST_MEMBERS_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_ST_MEMBER_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "ACTIVATE_SERVICE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "DEACTIVATE_SERVICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DEACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "DESTROY_SERVICE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DESTROY_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "WRITE_DATA_DASHBOARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "READ_DATA_DASHBOARD"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->READ_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "GET_FABRIC_DASHBOARD_INFO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_FABRIC_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "GET_MEMBER_DASHBOARD_INFO"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_MEMBER_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "DETECT_FABRIC_ABNORMALITY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "DETECT_TRUSTED_FABRIC_ABNORMALITY"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_TRUSTED_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "DETECT_MEMBER_ABNORMALITY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_MEMBER_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "GET_DASHBOARD_INFO_SELF"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_DASHBOARD_INFO_SELF:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "SIGNED_IN_SA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SIGNED_IN_SA:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "SMP_PUSH_EVENTS"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "SYNC_CHAIN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SYNC_CHAIN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "GET_ST_MEMBERS_SECURITY_STATUS"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_ST_MEMBERS_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    new-instance v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    const-string v1, "GET_ST_MEMBER_SECURITY_STATUS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_ST_MEMBER_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-static {}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->$values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->$VALUES:[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

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

    iput p3, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->responseCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->$VALUES:[Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->responseCode:I

    return p0
.end method
