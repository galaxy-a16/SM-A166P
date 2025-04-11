.class public final enum Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuccessCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum CREATED_OR_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum NO_CONTENT_OR_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

.field public static final enum OK_OR_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;


# instance fields
.field private final checkList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->CREATED_OR_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT_OR_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_OK:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "OK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "CREATED"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "NO_CONTENT"

    const/4 v6, 0x2

    invoke-direct {v0, v5, v6, v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "OK_OR_CREATED"

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6, v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v4, "OK_OR_NO_CONTENT"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "CREATED_OR_ALREADY_EXIST"

    const/4 v4, 0x5

    invoke-direct {v0, v2, v4, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->CREATED_OR_ALREADY_EXIST:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "NO_CONTENT_OR_NOT_FOUND"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT_OR_NOT_FOUND:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->$values()[Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->checkList:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;
    .locals 1

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->$VALUES:[Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {v0}, [Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    return-object v0
.end method


# virtual methods
.method public isSuccess(Ljava/lang/Integer;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->checkList:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
