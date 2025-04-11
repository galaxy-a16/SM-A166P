.class final enum Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum BLACKBOARD_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum BLACKBOARD_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum CHAIN_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum CHAIN_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum MEMBERSHIP_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum MEMBERSHIP_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum MESSAGE_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum MESSAGE_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

.field public static final enum NONE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->NONE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "CHAIN_T"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "CHAIN_F"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "MEMBERSHIP_T"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "MEMBERSHIP_F"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "BLACKBOARD_T"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "BLACKBOARD_F"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "MESSAGE_T"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "MESSAGE_F"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    const-string v1, "NONE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->NONE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->$values()[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    return-object v0
.end method
