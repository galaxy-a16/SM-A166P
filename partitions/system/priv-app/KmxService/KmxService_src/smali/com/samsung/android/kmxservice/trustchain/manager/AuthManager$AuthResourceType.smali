.class public final enum Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

.field public static final enum BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

.field public static final enum CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

.field public static final enum MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

.field public static final enum MESSAGE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MESSAGE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "CHAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "MEMBERSHIP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "BLACKBOARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const-string v1, "MESSAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MESSAGE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->$values()[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    return-object v0
.end method
