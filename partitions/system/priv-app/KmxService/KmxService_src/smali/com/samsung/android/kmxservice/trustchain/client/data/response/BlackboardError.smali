.class public Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "code"
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "error"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "message"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "code"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getError()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "error"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->error:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "message"
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/z;
        value = "status"
    .end annotation

    iget p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->status:I

    return p0
.end method
