.class public Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;
    }
.end annotation


# static fields
.field private static final responseInvalidFabricID:Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

.field private static final responseInvalidToken:Lcom/samsung/android/kmxservice/trustchain/client/data/Response;


# instance fields
.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_INVALID_TOKEN:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v1

    const-string v2, "auth token is not valid. Please check the auth connection"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseInvalidToken:Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v1

    const-string v2, "Incorrect URI resource requested with invalid FabricID"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseInvalidFabricID:Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseMessage:Ljava/lang/String;

    return-void
.end method

.method public static getResponseInvalidFabricID()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseInvalidFabricID:Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    return-object v0
.end method

.method public static getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseInvalidToken:Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    return-object v0
.end method


# virtual methods
.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    return p0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseMessage:Ljava/lang/String;

    return-object p0
.end method

.method public isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->isSuccess(Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printSuccessLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ", "

    invoke-static {p2, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getLogStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printMessageLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ", "

    invoke-static {p2, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getLogStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printSuccessLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ", "

    .line 1
    invoke-static {p2, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getLogStr(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", success"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printSuccessLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ", "

    .line 7
    invoke-static {p2, v0}, Landroidx/activity/b;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getLogStr(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", success: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response(responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",responseMessage=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->responseMessage:Ljava/lang/String;

    const-string v1, "])"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
