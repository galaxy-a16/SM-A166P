.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private businessErrorCode:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "businessErrorCode"
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "errorMessage"
    .end annotation
.end field

.field private errorTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "errorTitle"
    .end annotation
.end field

.field private httpErrorCode:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "httpErrorCode"
    .end annotation
.end field

.field private timestamp:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "timestamp"
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessErrorCode()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "businessErrorCode"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;->businessErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "errorMessage"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "errorTitle"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;->errorTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpErrorCode()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "httpErrorCode"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;->httpErrorCode:I

    return p0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "timestamp"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "uri"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipError;->uri:Ljava/lang/String;

    return-object p0
.end method
