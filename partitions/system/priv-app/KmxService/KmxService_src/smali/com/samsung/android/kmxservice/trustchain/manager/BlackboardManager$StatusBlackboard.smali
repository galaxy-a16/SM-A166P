.class public final enum Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusBlackboard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

.field public static final enum ACTIVE:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

.field public static final enum REGISTERED:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

.field public static final enum SUSPENDED:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->ACTIVE:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->SUSPENDED:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->REGISTERED:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    const/4 v1, 0x0

    const-string v2, "active"

    const-string v3, "ACTIVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->ACTIVE:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    const/4 v1, 0x1

    const-string v2, "suspended"

    const-string v3, "SUSPENDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->SUSPENDED:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    const/4 v1, 0x2

    const-string v2, "registered"

    const-string v3, "REGISTERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->REGISTERED:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->$values()[Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->value:Ljava/lang/String;

    return-object p0
.end method
